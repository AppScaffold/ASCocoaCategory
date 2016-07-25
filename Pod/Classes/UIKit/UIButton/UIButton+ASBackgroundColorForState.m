//
//  UIButton+BackgroundColorForState.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14-5-29.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//

#import "UIButton+ASBackgroundColorForState.h"
#import "UIImage+ASColor.h"
#import <objc/runtime.h>

@implementation UIButton (ASBackgroundColorForState)

- (NSMutableDictionary *)as_backgroundColorObjects {
    NSMutableDictionary *dictionary = objc_getAssociatedObject(self, @selector(as_backgroundColorForState:));
    if (dictionary) {
        return dictionary;
    }
    dictionary = [NSMutableDictionary dictionary];
    objc_setAssociatedObject(self, @selector(as_backgroundColorForState:), dictionary, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return dictionary;
}

- (void)as_setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state {
    UIImage             *image      = nil;
    NSMutableDictionary *dictionary = [self as_backgroundColorObjects];
    NSString            *key        = [NSString stringWithFormat:@"%@", [NSNumber numberWithUnsignedInteger:state]];
    if (backgroundColor) {
        [dictionary setObject:backgroundColor forKey:key];
        image = [UIImage as_imageWithColor:backgroundColor];
    } else {
        [dictionary removeObjectForKey:key];
    }
    [self setBackgroundImage:image forState:state];
}

- (UIColor *)as_backgroundColorForState:(UIControlState)state {
    NSString            *key        = [NSString stringWithFormat:@"%@", [NSNumber numberWithUnsignedInteger:state]];
    NSMutableDictionary *dictionary = [self as_backgroundColorObjects];
    return [dictionary objectForKey:key];
}

@end
