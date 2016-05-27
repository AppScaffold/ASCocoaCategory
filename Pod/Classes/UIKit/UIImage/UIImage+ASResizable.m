//
//  UIImage+ASResizable.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-11-14.
//  Copyright 2013年 AppScaffold. All rights reserved.
//

#import "UIImage+ASResizable.h"

@implementation UIImage (ASResizable)

- (UIImage *)as_resizableImage {
    NSInteger imageWidth  = (NSInteger)self.size.width;
    NSInteger imageHeight = (NSInteger)self.size.height;

    if (imageWidth == 0 || imageHeight == 0) {
        return self;
    }

    CGFloat top    = 0;
    CGFloat left   = 0;
    CGFloat bottom = 0;
    CGFloat right  = 0;

    if (imageWidth % 2 == 0) {
        left  = (CGFloat)(imageWidth / 2 - 1);
        right = (CGFloat)(imageWidth / 2);
    } else {
        left = right = (CGFloat)(imageWidth/2);
    }

    if (imageHeight % 2 == 0) {
        top    = (CGFloat)(imageHeight / 2 - 1);
        bottom = (CGFloat)(imageHeight / 2);
    } else {
        top = bottom = (CGFloat)(imageHeight / 2);
    }

    return [self resizableImageWithCapInsets:UIEdgeInsetsMake(top, left, bottom, right)];
}

@end
