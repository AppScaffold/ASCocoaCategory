//
//  NSData+ASBase64.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-12-22.
//  Copyright (c) 2016 AppScaffold. All rights reserved.
//

#import "NSData+ASBase64.h"

@implementation NSData (ASBase64)

+ (NSData *)as_dataWithBase64EncodedString:(NSString *)string {
#if ((defined __MAC_OS_X_VERSION_MIN_REQUIRED && __MAC_OS_X_VERSION_MIN_REQUIRED >= __MAC_10_9) || \
(defined __IPHONE_OS_VERSION_MIN_REQUIRED && __IPHONE_OS_VERSION_MIN_REQUIRED >= __IPHONE_7_0))
    return [[NSData alloc] initWithBase64EncodedString:string options:0];
#else
    if ([NSData instancesRespondToSelector:@selector(initWithBase64EncodedString:options:)]) {
        return [[NSData alloc] initWithBase64EncodedString:string options:0];
    }
    return [[NSData alloc] initWithBase64Encoding:string];
#endif
}

- (NSString *)as_base64EncodedString {
#if ((defined __MAC_OS_X_VERSION_MIN_REQUIRED && __MAC_OS_X_VERSION_MIN_REQUIRED >= __MAC_10_9) || \
(defined __IPHONE_OS_VERSION_MIN_REQUIRED && __IPHONE_OS_VERSION_MIN_REQUIRED >= __IPHONE_7_0))
    return [self base64EncodedStringWithOptions:0];
#else
    if ([self respondsToSelector:@selector(base64EncodedStringWithOptions:)]) {
        return [self base64EncodedStringWithOptions:0];
    }
    return [self base64Encoding];
#endif
}

@end
