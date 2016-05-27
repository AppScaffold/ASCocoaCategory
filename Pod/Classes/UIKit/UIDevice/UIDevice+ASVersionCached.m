//
//  UIDevice+ASVersionCached.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 8/6/15.
//  Copyright © 2015 AppScaffold. All rights reserved.
//

#import "UIDevice+ASVersionCached.h"

@implementation UIDevice (ASVersionCached)

- (NSString *)as_systemVersionCached {
    static NSString        *systemVersionStringCached;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        systemVersionStringCached = [self systemVersion];
    });
    return systemVersionStringCached;
}

@end
