//
//  UIColor+ASHex.h
//  AppScaffold Cocoa Category
//
//  Created by OolongTea on 16/3/4.
//  Copyright (c) 2016-2017 AppScaffold
//

#import "UIColor+ASHex.h"

@implementation UIColor (ASHex)

///////////////////////////////////////////////////////////////////////////////////////////////////
+ (UIColor *)as_colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue {
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16)) / 255.0
                           green:((float)((hexValue & 0xFF00) >> 8)) / 255.0
                            blue:((float)(hexValue & 0xFF)) / 255.0
                           alpha:alphaValue];
}

///////////////////////////////////////////////////////////////////////////////////////////////////
+ (UIColor *)as_colorWithHex:(NSInteger)hexValue {
    return [UIColor as_colorWithHex:hexValue alpha:1.0];
}

///////////////////////////////////////////////////////////////////////////////////////////////////
+ (UIColor *)as_colorWithHexString:(NSString *)hexString {
    return [self as_colorWithHexString:hexString alpha:MAXFLOAT];
}

+ (UIColor *)as_colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha {
    if ([hexString hasPrefix:@"0x"] || [hexString hasPrefix:@"0X"]) {
        hexString = [hexString substringFromIndex:2];
    } else if ([hexString hasPrefix:@"#"]) {
        hexString = [hexString substringFromIndex:1];
    }

    unsigned int value = 0;
    if (![[NSScanner scannerWithString:hexString] scanHexInt:&value])
        return [UIColor clearColor];
    float r, g, b, a;
    a = alpha;
    if ([hexString length] == 8) {
        if (a == MAXFLOAT) {
            a = (value & 0xFF) / 255.f;
        }
        value = value >> 8;
    }
    a     = MIN(1, a);
    b     = value & 0xFF;
    value = value >> 8;
    g     = value & 0xFF;
    value = value >> 8;
    r     = value;

    return [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a];
}

@end
