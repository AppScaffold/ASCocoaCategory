//
//  UIImage+ASColor.m
//  AppScaffold Cocoa Category
//
//  Created by OolongTea on 16/3/5.
//  Copyright (c) 2016-2017 AppScaffold
//

#import "UIImage+ASColor.h"

@implementation UIImage (ASColor)

///////////////////////////////////////////////////////////////////////////////////////////////////
+ (UIImage *)as_transparentImage {
    UIGraphicsBeginImageContext(CGSizeMake(1, 1));
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return image;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
+ (UIImage *)as_imageWithColor:(UIColor *)color {
    return [self as_imageWithColor:color withSize:CGSizeMake(1, 1)];
}

+ (UIImage *)as_imageWithColor:(UIColor *)color withSize:(CGSize)size {
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
+ (UIImage *)as_imageWithPlaceHolder:(UIImage *)holder backgroundColor:(UIColor *)color size:(CGSize)size {
    UIImage *backgroundImage = [self as_imageWithColor:color withSize:size];

    UIGraphicsBeginImageContext(size);
    [backgroundImage drawInRect:CGRectMake(0, 0, size.width, size.height)];
    [holder drawInRect:CGRectMake((size.width - holder.size.width)/2, (size.height - holder.size.height)/2, holder.size.width, holder.size.height)];
    UIImage *resultingImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return resultingImage;
}

@end
