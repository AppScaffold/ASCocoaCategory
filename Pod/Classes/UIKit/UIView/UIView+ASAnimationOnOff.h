//
//  UIView+ASAnimationOnOff.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-12-13.
//  Copyright (c) 2013年 AppScaffold. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+ASAnimation.h"

@interface UIView (ASAnimationOnOff)

+ (void)as_animateWithAnimated:(BOOL)animated
                      duration:(NSTimeInterval)duration
                    animations:(void (^)(void))animations;

+ (void)as_animateWithAnimated:(BOOL)animated
                      duration:(NSTimeInterval)duration
                    animations:(void (^)(void))animations
                    completion:(void (^)(BOOL finished))completion;

+ (void)as_animateWithAnimated:(BOOL)animated
                      duration:(NSTimeInterval)duration
                       options:(UIViewAnimationOptions)options
                    animations:(void (^)(void))animations;

+ (void)as_animateWithAnimated:(BOOL)animated
                      duration:(NSTimeInterval)duration
                       options:(UIViewAnimationOptions)options
                    animations:(void (^)(void))animations
                    completion:(void (^)(BOOL finished))completion;

+ (void)as_animateWithAnimated:(BOOL)animated
                      duration:(NSTimeInterval)duration
                         delay:(NSTimeInterval)delay
                       options:(UIViewAnimationOptions)options
                    animations:(void (^)(void))animations
                    completion:(void (^)(BOOL finished))completion;

+ (void)as_animateWithAnimated:(BOOL)animated
                      duration:(NSTimeInterval)duration
                         delay:(NSTimeInterval)delay
        usingSpringWithDamping:(CGFloat)dampingRatio
         initialSpringVelocity:(CGFloat)velocity
                       options:(UIViewAnimationOptions)options
                    animations:(void (^)(void))animations
                    completion:(void (^)(BOOL finished))completion;

+ (void)as_transitionWithAnimated:(BOOL)animated view:(UIView *)view duration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options animations:(void (^)(void))animations completion:(void (^)(BOOL finished))completion NS_AVAILABLE_IOS(4_0);

+ (void)as_transitionWithAnimated:(BOOL)animated fromView:(UIView *)fromView toView:(UIView *)toView duration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options completion:(void (^)(BOOL finished))completion NS_AVAILABLE_IOS(4_0); // toView added to fromView.superview, fromView removed from its superview

@end
