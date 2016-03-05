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
+ (UIImage *)as_imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0, 0, 1, 1);
    // Create a 1 by 1 pixel context
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    [color setFill];
    UIRectFill(rect);   // Fill it with your color
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
+ (UIImage *)as_imageWithPlaceHolder:(UIImage *)holder backGroundColor:(UIColor *)color size:(CGSize)size {
    UIImage *backGroundImage = [self as_imageWithColor:color];
    
    UIGraphicsBeginImageContext(size);
    [backGroundImage drawInRect:CGRectMake(0, 0, size.width, size.height)];
    [holder drawInRect:CGRectMake((size.width - holder.size.width)/2,(size.height - holder.size.height)/2, holder.size.width, holder.size.height)];
    UIImage *resultingImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return resultingImage;
}

@end
