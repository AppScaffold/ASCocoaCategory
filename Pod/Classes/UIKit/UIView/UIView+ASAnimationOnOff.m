//
//  UIView+ASAnimationOnOff.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-12-13.
//  Copyright (c) 2013年 AppScaffold. All rights reserved.
//

#import "UIView+ASAnimationOnOff.h"

@implementation UIView (ASAnimationOnOff)

+ (void)as_execAnimations:(void (^)(void))animations
               completion:(void (^)(BOOL finished))completion {
    if (animations) {
        animations();
    }
    if (completion) {
        completion(YES);
    }
}

+ (void)as_animateWithAnimated:(BOOL)animated
                      duration:(NSTimeInterval)duration
                    animations:(void (^)(void))animations {
    if (animated) {
        [self animateWithDuration:duration
                       animations:animations];
    } else {
        [self as_execAnimations:animations completion:nil];
    }
}

+ (void)as_animateWithAnimated:(BOOL)animated
                      duration:(NSTimeInterval)duration
                    animations:(void (^)(void))animations
                    completion:(void (^)(BOOL finished))completion {
    if (animated) {
        [self animateWithDuration:duration
                       animations:animations
                       completion:completion];
    } else {
        [self as_execAnimations:animations completion:completion];
    }
}

+ (void)as_animateWithAnimated:(BOOL)animated
                      duration:(NSTimeInterval)duration
                       options:(UIViewAnimationOptions)options
                    animations:(void (^)(void))animations {
    if (animated) {
        [self as_animateWithDuration:duration options:options animations:animations];
    } else {
        [self as_execAnimations:animations completion:nil];
    }
}

+ (void)as_animateWithAnimated:(BOOL)animated
                      duration:(NSTimeInterval)duration
                       options:(UIViewAnimationOptions)options
                    animations:(void (^)(void))animations
                    completion:(void (^)(BOOL finished))completion {
    if (animated) {
        [self as_animateWithDuration:duration options:options animations:animations completion:completion];
    } else {
        [self as_execAnimations:animations completion:completion];
    }
}

+ (void)as_animateWithAnimated:(BOOL)animated
                      duration:(NSTimeInterval)duration
                         delay:(NSTimeInterval)delay
                       options:(UIViewAnimationOptions)options
                    animations:(void (^)(void))animations
                    completion:(void (^)(BOOL finished))completion {
    if (animated) {
        [self animateWithDuration:duration
                            delay:delay
                          options:options
                       animations:animations
                       completion:completion];
    } else {
        [self as_execAnimations:animations completion:completion];
    }
}

+ (void)as_animateWithAnimated:(BOOL)animated
                      duration:(NSTimeInterval)duration
                         delay:(NSTimeInterval)delay
        usingSpringWithDamping:(CGFloat)dampingRatio
         initialSpringVelocity:(CGFloat)velocity
                       options:(UIViewAnimationOptions)options
                    animations:(void (^)(void))animations
                    completion:(void (^)(BOOL finished))completion {
    if (animated) {
        [self animateWithDuration:duration
                            delay:delay
           usingSpringWithDamping:dampingRatio
            initialSpringVelocity:velocity
                          options:options
                       animations:animations
                       completion:completion];
    } else {
        [self as_execAnimations:animations completion:completion];
    }
}

+ (void)as_transitionWithAnimated:(BOOL)animated
                             view:(UIView *)view
                         duration:(NSTimeInterval)duration
                          options:(UIViewAnimationOptions)options
                       animations:(void (^)(void))animations
                       completion:(void (^)(BOOL finished))completion {
    if (animated) {
        [self transitionWithView:view
                        duration:duration
                         options:options
                      animations:animations
                      completion:completion];
    } else {
        [self as_execAnimations:animations completion:completion];
    }
}

+ (void)as_transitionWithAnimated:(BOOL)animated
                         fromView:(UIView *)fromView
                           toView:(UIView *)toView
                         duration:(NSTimeInterval)duration
                          options:(UIViewAnimationOptions)options
                       completion:(void (^)(BOOL finished))completion {
    if (animated) {
        [self transitionFromView:fromView
                          toView:toView
                        duration:duration
                         options:options
                      completion:completion];
    } else {
        [fromView.superview addSubview:toView];
        [fromView removeFromSuperview];
        if (completion) {
            completion(YES);
        }
    }
}

@end
