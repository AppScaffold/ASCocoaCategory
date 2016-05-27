//
//  UIColor+ASHSV.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-12-23.
//  Copyright (c) 2013年 AppScaffold. All rights reserved.
//

#import "UIColor+ASHSV.h"
#import "Math+ASMacro.h"

// Color algorithms from http://www.cs.rit.edu/~ncs/color/t_convert.html

void RGBtoHSV(CGFloat r, CGFloat g, CGFloat b, CGFloat *h, CGFloat *s, CGFloat *v) {
    CGFloat min, max, delta;
    min   = MIN3(r, g, b);
    max   = MAX3(r, g, b);
    *v    = max;     // v
    delta = max - min;
    if (max != 0)
        *s = delta / max;    // s
    else {
        // r = g = b = 0    // s = 0, v is undefined
        *s = 0;
        *h = -1;
        return;
    }
    if (r == max)
        *h = (g - b) / delta;      // between yellow & magenta
    else if (g == max)
        *h = 2 + (b - r) / delta;    // between cyan & yellow
    else
        *h = 4 + (r - g) / delta;    // between magenta & cyan
    *h *= 60;        // degrees
    if (*h < 0)
        *h += 360;
}

void HSVtoRGB(CGFloat *r, CGFloat *g, CGFloat *b, CGFloat h, CGFloat s, CGFloat v) {
    NSInteger i;
    CGFloat   f, p, q, t;
    if (s == 0) {
        // achromatic (grey)
        *r = *g = *b = v;
        return;
    }
    h /= 60;      // sector 0 to 5
#if defined(__LP64__) && __LP64__
    i = floor(h);
#else
    i = floorf(h);
#endif
    f = h - i;      // factorial part of h
    p = v * (1 - s);
    q = v * (1 - s * f);
    t = v * (1 - s * (1 - f) );
    switch (i) {
        case 0:
            *r = v;
            *g = t;
            *b = p;
            break;
        case 1:
            *r = q;
            *g = v;
            *b = p;
            break;
        case 2:
            *r = p;
            *g = v;
            *b = t;
            break;
        case 3:
            *r = p;
            *g = q;
            *b = v;
            break;
        case 4:
            *r = t;
            *g = p;
            *b = v;
            break;
        default:
            // case 5:
            *r = v;
            *g = p;
            *b = q;
            break;
    }
}

@implementation UIColor (ASHSV)

+ (UIColor *)as_colorWithHue:(CGFloat)h saturation:(CGFloat)s value:(CGFloat)v alpha:(CGFloat)a {
    CGFloat r, g, b;
    HSVtoRGB(&r, &g, &b, h, s, v);
    return [UIColor colorWithRed:r green:g blue:b alpha:a];
}

- (UIColor *)as_multiplyHue:(CGFloat)hd saturation:(CGFloat)sd value:(CGFloat)vd {
    const CGFloat *rgba = CGColorGetComponents(self.CGColor);
    CGFloat       r     = rgba[0];
    CGFloat       g     = rgba[1];
    CGFloat       b     = rgba[2];
    CGFloat       a     = rgba[3];

    CGFloat h, s, v;
    RGBtoHSV(r, g, b, &h, &s, &v);

    h *= hd;
    v *= vd;
    s *= sd;

    HSVtoRGB(&r, &g, &b, h, s, v);

    return [UIColor colorWithRed:r green:g blue:b alpha:a];
}

- (UIColor *)as_addHue:(CGFloat)hd saturation:(CGFloat)sd value:(CGFloat)vd {
    const CGFloat *rgba = CGColorGetComponents(self.CGColor);
    CGFloat       r     = rgba[0];
    CGFloat       g     = rgba[1];
    CGFloat       b     = rgba[2];
    CGFloat       a     = rgba[3];

    CGFloat h, s, v;
    RGBtoHSV(r, g, b, &h, &s, &v);

    h += hd;
    v += vd;
    s += sd;

    HSVtoRGB(&r, &g, &b, h, s, v);

    return [UIColor colorWithRed:r green:g blue:b alpha:a];
}

- (UIColor *)as_highlight {
    return [self as_multiplyHue:1 saturation:0.4 value:1.2];
}

- (UIColor *)as_shadow {
    return [self as_multiplyHue:1 saturation:0.6 value:0.6];
}

- (CGFloat)as_hue {
    const CGFloat *rgba = CGColorGetComponents(self.CGColor);
    CGFloat       h, s, v;
    RGBtoHSV(rgba[0], rgba[1], rgba[2], &h, &s, &v);
    return h;
}

- (CGFloat)as_saturation {
    const CGFloat *rgba = CGColorGetComponents(self.CGColor);
    CGFloat       h, s, v;
    RGBtoHSV(rgba[0], rgba[1], rgba[2], &h, &s, &v);
    return s;
}

- (CGFloat)as_value {
    const CGFloat *rgba = CGColorGetComponents(self.CGColor);
    CGFloat       h, s, v;
    RGBtoHSV(rgba[0], rgba[1], rgba[2], &h, &s, &v);
    return v;
}

@end
