//
//  UIColor+ASCommon.h
//  AppScaffold Cocoa Category
//
//  Created by OolongTea on 16/3/4.
//  Copyright (c) 2016-2017 AppScaffold
//

#import "UIColor+ASCommon.h"

@implementation UIColor (ASCommon)

///////////////////////////////////////////////////////////////////////////////////////////////////
+ (UIColor *)as_whiteColorWithAlpha:(CGFloat)alphaValue {
    return [UIColor colorWithRed:255.0f / 255.0f green:255.0f / 255.0f blue:255.0f / 255.0f alpha:alphaValue];
}

///////////////////////////////////////////////////////////////////////////////////////////////////
+ (UIColor *)as_blackColorWithAlpha:(CGFloat)alphaValue {
    return [UIColor colorWithRed:0 green:0 blue:0 alpha:alphaValue];
}

///////////////////////////////////////////////////////////////////////////////////////////////////
+ (UIColor*)as_colorFromRGBFloatRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue{
    return [self as_colorFromRGBFloatRed:red green:green blue:blue alpha:1];
}

///////////////////////////////////////////////////////////////////////////////////////////////////
+ (UIColor*)as_colorFromRGBFloatRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha{
    return [UIColor colorWithRed:red / 255.0f green:green / 255.0f blue:blue / 255.0f alpha:alpha / 1.0];
}

@end
