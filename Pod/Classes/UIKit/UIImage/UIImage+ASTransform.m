//
//  UIImage+ASTransform.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-12-22.
//  Copyright (c) 2013年 AppScaffold. All rights reserved.
//

#import "UIImage+ASTransform.h"

@implementation UIImage (ASTransform)

///////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * Creates a new image by resizing the receiver to the desired size, and rotating it if receiver's
 * imageOrientation shows it to be necessary (and the rotate argument is YES).
 */
- (UIImage *)as_transformWidth:(CGFloat)width height:(CGFloat)height rotate:(BOOL)rotate {
    CGFloat destW   = width;
    CGFloat destH   = height;
    CGFloat sourceW = width;
    CGFloat sourceH = height;
    if (rotate) {
        if (self.imageOrientation == UIImageOrientationRight
            || self.imageOrientation == UIImageOrientationLeft) {
            sourceW = height;
            sourceH = width;
        }
    }

    CGImageRef   imageRef    = self.CGImage;
    size_t       bytesPerRow = destW * (CGImageGetBitsPerPixel(imageRef) >> 3);
    CGContextRef bitmap      = CGBitmapContextCreate(NULL, destW, destH,
                                                     CGImageGetBitsPerComponent(imageRef), bytesPerRow, CGImageGetColorSpace(imageRef),
                                                     CGImageGetBitmapInfo(imageRef));

    if (rotate) {
        if (self.imageOrientation == UIImageOrientationDown) {
            CGContextTranslateCTM(bitmap, sourceW, sourceH);
            CGContextRotateCTM(bitmap, 180 * (M_PI/180));

        } else if (self.imageOrientation == UIImageOrientationLeft) {
            CGContextTranslateCTM(bitmap, sourceH, 0);
            CGContextRotateCTM(bitmap, 90 * (M_PI/180));

        } else if (self.imageOrientation == UIImageOrientationRight) {
            CGContextTranslateCTM(bitmap, 0, sourceW);
            CGContextRotateCTM(bitmap, -90 * (M_PI/180));
        }
    }

    CGContextDrawImage(bitmap, CGRectMake(0, 0, sourceW, sourceH), imageRef);

    CGImageRef ref     = CGBitmapContextCreateImage(bitmap);
    UIImage    *result = [UIImage imageWithCGImage:ref];
    CGContextRelease(bitmap);
    CGImageRelease(ref);

    return result;
}


- (UIImage *)as_imageWithCornerRadius:(CGFloat)cornerRadius {
    CGRect frame = CGRectMake(0, 0, self.size.width, self.size.height);

    // Begin a new image that will be the new image with the rounded corners
    // (here with the size of an UIImageView)
    UIGraphicsBeginImageContextWithOptions(self.size, NO, self.scale);

    // Add a clip before drawing anything, in the shape of an rounded rect
    [[UIBezierPath bezierPathWithRoundedRect:frame
                                cornerRadius:cornerRadius] addClip];
    // Draw your image
    [self drawInRect:frame];

    // Get the image, here setting the UIImageView image
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();

    // Lets forget about that we were drawing
    UIGraphicsEndImageContext();
    
    return image;
}

@end
