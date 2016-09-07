//
//  UIImage+ASDraw.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-12-22.
//  Copyright (c) 2013年 AppScaffold. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ASDraw)

/**
 * Returns a CGRect positioned within rect given the contentMode.
 */
- (CGRect)as_convertRect:(CGRect)rect withContentMode:(UIViewContentMode)contentMode;

/**
 * Draws the image using content mode rules.
 */
- (void)as_drawInRect:(CGRect)rect contentMode:(UIViewContentMode)contentMode;

/**
 * Draws the image as a rounded rectangle.
 */
- (void)as_drawInRect:(CGRect)rect radius:(CGFloat)radius;
- (void)as_drawInRect:(CGRect)rect radius:(CGFloat)radius contentMode:(UIViewContentMode)contentMode;

- (UIImage *)as_drawImageInCenter:(UIImage *)inputImage;
- (UIImage *)as_drawImage:(UIImage *)inputImage inRect:(CGRect)frame;
- (UIImage *)as_imageWithMaskImage:(UIImage *)mask;

@end
