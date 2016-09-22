//
//  NSBundle+ASLanguage.m
//  Pods
//
//  Created by Whirlwind on 2016/9/22.
//
//

#import "NSBundle+ASLanguage.h"
#import <objc/runtime.h>

static const char _asbundle=0;

@interface ASBundleEx : NSBundle
@end

@implementation ASBundleEx

- (NSString*)localizedStringForKey:(NSString *)key value:(NSString *)value table:(NSString *)tableName {
    NSBundle* bundle=objc_getAssociatedObject(self, &_asbundle);
    return bundle ? [bundle localizedStringForKey:key value:value table:tableName] : [super localizedStringForKey:key value:value table:tableName];
}

@end

@implementation NSBundle (Language)

+ (void)as_setLanguage:(NSString*)language {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^ {
        object_setClass([NSBundle mainBundle],[ASBundleEx class]);
    });
    objc_setAssociatedObject([NSBundle mainBundle], &_asbundle, language ? [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:language ofType:@"lproj"]] : nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
