//
//  UIImage+ASTransform.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-12-22.
//  Copyright (c) 2013年 AppScaffold. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ASTransform)

/*
 * Resizes an image. Optionally rotates the image based on imageOrientation.
 */
- (UIImage *)as_transformWidth:(CGFloat)width height:(CGFloat)height rotate:(BOOL)rotate;

- (UIImage *)as_imageWithCornerRadius:(CGFloat)cornerRadius;

@end
