//
//  UIDevice+ASModel.m
//  ASCocoaCategory
//
//  Created by Whirlwind on 2017/11/16.
//

#import "UIDevice+ASModel.h"
#include <sys/sysctl.h>
#import <objc/runtime.h>

@implementation UIDevice (ASModel)

+ (NSDictionary *)as_modelList {
    static dispatch_once_t onceToken;
    static NSDictionary *deviceList;
    dispatch_once(&onceToken, ^{
        NSString *path = [[NSBundle mainBundle] pathForResource:@"DeviceList" ofType:@"plist"];
        deviceList = [NSDictionary dictionaryWithContentsOfFile:path];
        NSAssert(deviceList != nil, @"DevicePlist not found in the bundle.");
    });
    return deviceList;
}

+ (NSDictionary *)as_modelDictionaryForHardware:(NSString *)hardware {
    return [[self as_modelList] objectForKey:hardware];
}

- (NSString *)as_hardwareString {
#if TARGET_OS_SIMULATOR
    return [[NSProcessInfo processInfo] environment][@"SIMULATOR_MODEL_IDENTIFIER"];
#else
    NSString *hardware = objc_getAssociatedObject(self, @selector(as_hardwareString));
    if (hardware) {
        return hardware;
    }
    int name[] = {CTL_HW,HW_MACHINE};
    size_t size = 100;
    sysctl(name, 2, NULL, &size, NULL, 0); // getting size of answer
    char *hw_machine = malloc(size);

    sysctl(name, 2, hw_machine, &size, NULL, 0);
    hardware = [NSString stringWithUTF8String:hw_machine];
    free(hw_machine);
    objc_setAssociatedObject(self, @selector(as_hardwareString), hardware, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return hardware;
#endif
}

- (UIDeviceType)as_type {
    NSNumber *obj = objc_getAssociatedObject(self, @selector(as_type));
    if (obj) {
        return [obj unsignedIntegerValue];
    }
    UIDeviceType type = UIDeviceUnknown;
    NSString *model = [self as_hardwareString];
    if ([model hasPrefix:@"iPhone"]) {
        type = UIDeviceIPhone;
    } else if ([model hasPrefix:@"iPod"]) {
        type = UIDeviceIPodTouch;
    } else if ([model hasPrefix:@"iPad"]) {
        type = UIDeviceIPad;
    } else if ([model hasPrefix:@"AppleTV"]) {
        type = UIDeviceAppleTV;
    } else if ([model hasPrefix:@"Watch"]) {
        type = UIDeviceAppleWatch;
    }
    objc_setAssociatedObject(self, @selector(as_type), @(type), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return type;
}

- (NSString *)as_modelFullName {
    return [[self class] as_modelDictionaryForHardware:[self as_hardwareString]][@"name"];
}

- (NSString *)as_modelName {
    NSString *modelName = objc_getAssociatedObject(self, @selector(as_modelName));
    if (modelName) {
        return modelName;
    }
    modelName = [self as_modelFullName];
    NSUInteger location = [modelName rangeOfString:@"("].location;
    if (location != NSNotFound) {
        modelName = [[modelName substringToIndex:location] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    }
    objc_setAssociatedObject(self, @selector(as_modelName), modelName, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return modelName;
}

- (long long)as_modelType {
    NSNumber *obj = objc_getAssociatedObject(self, @selector(as_modelType));
    if (obj) {
        return [obj longLongValue];
    }
    NSString *model = [[self class] as_modelDictionaryForHardware:[self as_hardwareString]][@"model"];
    if (model) {
        NSExpression *expression = [NSExpression expressionWithFormat:model];
        // result is a NSNumber
        id result = [expression expressionValueWithObject:nil context:nil];
        if (result) {
            objc_setAssociatedObject(self, @selector(as_modelType), result, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
            return [result longLongValue];
        }
    }
    objc_setAssociatedObject(self, @selector(as_modelType), @(0), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return 0;
}

- (UIDeviceNetworkType)as_networkType {
    NSNumber *obj = objc_getAssociatedObject(self, @selector(as_networkType));
    if (obj) {
        return [obj unsignedIntegerValue];
    }
    UIDeviceNetworkType network = UIDeviceNetworkUnsupport;
    NSString *fullName = [self as_modelFullName];
    NSString *extInfo = nil;
    NSUInteger location = [fullName rangeOfString:@"("].location;
    if (location != NSNotFound) {
        extInfo = [fullName substringFromIndex:location];
    }
    if ([extInfo rangeOfString:@"GSM"].location != NSNotFound) {
        network |= UIDeviceGSM;
    }
    if ([extInfo rangeOfString:@"CDMA"].location != NSNotFound) {
        network |= UIDeviceCDMA;
    }
    if ([extInfo rangeOfString:@"Cellular"].location != NSNotFound) {
        network |= UIDeviceCellular;
    }
    if ([extInfo rangeOfString:@"3G"].location != NSNotFound) {
        network |= UIDeviceCellular;
    }
    if ([extInfo rangeOfString:@"GPS"].location != NSNotFound) {
        network |= UIDeviceGPS;
    }
    network |= UIDeviceWIFI;
    UIDeviceType deviceType = [self as_type];
    switch (deviceType) {
        case UIDeviceIPhone:
            // iPhone is Global if has not CDMA/GSM flag
            if ((network & UIDeviceCellular) == 0) {
                network |= UIDeviceCellular;
            }
            break;
        case UIDeviceIPad:
            break;
        default:
            break;
    }
    // must support GPS if it supports cellular
    if ((network & UIDeviceCellular) > 0) {
        network |= UIDeviceGPS;
    }
    objc_setAssociatedObject(self, @selector(as_networkType), @(network), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return network;
}

@end
