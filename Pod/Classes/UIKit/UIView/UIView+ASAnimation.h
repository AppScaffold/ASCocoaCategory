//
//  UIView+ASAnimation.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14-9-28.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ASAnimation)

+ (void)as_animateWithDuration:(NSTimeInterval)duration
                       options:(UIViewAnimationOptions)options
                    animations:(void (^)(void))animations NS_AVAILABLE_IOS(4_0);

+ (void)as_animateWithDuration:(NSTimeInterval)duration
                       options:(UIViewAnimationOptions)options
                    animations:(void (^)(void))animations
                    completion:(void (^)(BOOL finished))completion NS_AVAILABLE_IOS(4_0);

@end
