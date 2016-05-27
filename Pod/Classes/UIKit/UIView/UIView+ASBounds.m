//
//  UIView+ASBounds.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-12-26.
//  Copyright (c) 2013年 AppScaffold. All rights reserved.
//

#import "UIView+ASBounds.h"

@implementation UIView (ASBounds)

- (CGFloat)as_boundsLeft {
    return CGRectGetMinX(self.bounds);
}

- (void)as_setBoundsLeft:(CGFloat)boundsLeft {
    CGRect bounds = self.bounds;
    bounds.origin.x = boundsLeft;
    self.bounds     = bounds;
}

- (CGFloat)as_boundsRight {
    return CGRectGetMaxX(self.bounds);
}

- (void)as_setBoundsRight:(CGFloat)boundsRight {
    CGRect bounds = self.bounds;
    bounds.origin.x = boundsRight - CGRectGetWidth(bounds);
    self.bounds     = bounds;
}

- (CGFloat)as_boundsTop {
    return CGRectGetMinY(self.bounds);
}

- (void)as_setBoundsTop:(CGFloat)boundsTop {
    CGRect bounds = self.bounds;
    bounds.origin.y = boundsTop;
    self.bounds     = bounds;
}

- (CGFloat)as_boundsBottom {
    return CGRectGetMaxY(self.bounds);
}

- (void)as_setBoundsBottom:(CGFloat)boundsBottom {
    CGRect bounds = self.bounds;
    bounds.origin.y = boundsBottom - CGRectGetHeight(bounds);
    self.bounds     = bounds;
}

- (CGFloat)as_boundsWidth {
    return CGRectGetWidth(self.bounds);
}

- (void)as_setBoundsWidth:(CGFloat)boundsWidth {
    CGRect bounds = self.bounds;
    bounds.size.width = boundsWidth;
    self.bounds       = bounds;
}

- (CGFloat)as_boundsHeight {
    return CGRectGetHeight(self.bounds);
}

- (void)as_setBoundsHeight:(CGFloat)boundsHeight {
    CGRect bounds = self.bounds;
    bounds.size.height = boundsHeight;
    self.bounds        = bounds;
}

- (CGPoint)as_boundsOrigin {
    return self.bounds.origin;
}

- (void)as_setBoundsOrigin:(CGPoint)boundsOrigin {
    CGRect bounds = self.bounds;
    bounds.origin = boundsOrigin;
    self.bounds   = bounds;
}

- (CGSize)as_boundsSize {
    return self.bounds.size;
}

- (void)as_setBoundsSize:(CGSize)boundsSize {
    CGRect bounds = self.bounds;
    bounds.size = boundsSize;
    self.bounds = bounds;
}

- (CGFloat)as_boundsCenterX {
    return CGRectGetMidX(self.bounds);
}

- (CGFloat)as_boundsCenterY {
    return CGRectGetMidY(self.bounds);
}

- (CGPoint)as_boundsCenter {
    return CGPointMake(self.as_boundsCenterX, self.as_boundsCenterY);
}

@end
