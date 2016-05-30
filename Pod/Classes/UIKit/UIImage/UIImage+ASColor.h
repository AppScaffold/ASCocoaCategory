//
//  UIImage+ASColor.h
//  AppScaffold Cocoa Category
//
//  Created by OolongTea on 16/3/5.
//  Copyright (c) 2016-2017 AppScaffold
//

#import <UIKit/UIKit.h>

@interface UIImage (ASColor)

/**
 * Get a 1x1 size transparent image
 */
+ (UIImage *)as_transparentImage;

/**
 *
 */
+ (UIImage *)as_imageWithColor:(UIColor *)color;

/**
 *
 */
+ (UIImage *)as_imageWithPlaceHolder:(UIImage *)holder
                     backgroundColor:(UIColor *)color
                                size:(CGSize)size;

@end
