//
//  UIColor+ASHSV.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-12-23.
//  Copyright (c) 2013年 AppScaffold. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (ASHSV)

/**
 * Accepted ranges:
 *        hue: 0.0 - 360.0
 * saturation: 0.0 - 1.0
 *      value: 0.0 - 1.0
 *      alpha: 0.0 - 1.0
 */
+ (UIColor *)as_colorWithHue:(CGFloat)h saturation:(CGFloat)s value:(CGFloat)v alpha:(CGFloat)a;

/**
 * Accepted ranges:
 *        hue: 0.0 - 1.0
 * saturation: 0.0 - 1.0
 *      value: 0.0 - 1.0
 */
- (UIColor *)as_multiplyHue:(CGFloat)hd saturation:(CGFloat)sd value:(CGFloat)vd;

- (UIColor *)as_addHue:(CGFloat)hd saturation:(CGFloat)sd value:(CGFloat)vd;

/**
 * Uses as_multiplyHue:saturation:value:alpha: to create a lighter version of the color.
 */
- (UIColor *)as_highlight;

/**
 * Uses as_multiplyHue:saturation:value:alpha: to create a darker version of the color.
 */
- (UIColor *)as_shadow;

- (CGFloat)as_hue;

- (CGFloat)as_saturation;

- (CGFloat)as_value;

@end
