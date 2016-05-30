//
//  UIView+ASAnimation.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14-9-28.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//

#import "UIView+ASAnimation.h"

@implementation UIView (ASAnimation)

+ (void)as_animateWithDuration:(NSTimeInterval)duration
                       options:(UIViewAnimationOptions)options
                    animations:(void (^)(void))animations {
    [self animateWithDuration:duration
                        delay:0
                      options:options
                   animations:animations
                   completion:nil];
}

+ (void)as_animateWithDuration:(NSTimeInterval)duration
                       options:(UIViewAnimationOptions)options
                    animations:(void (^)(void))animations
                    completion:(void (^)(BOOL finished))completion {
    [self animateWithDuration:duration
                        delay:0
                      options:options
                   animations:animations
                   completion:completion];
}

@end
