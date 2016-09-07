//
//  UIImage+ASDraw.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-12-22.
//  Copyright (c) 2013年 AppScaffold. All rights reserved.
//

#import "UIImage+ASDraw.h"

@implementation UIImage (ASDraw)

#pragma mark -
#pragma mark Private

- (void)as_addRoundedRectToPath:(CGContextRef)context rect:(CGRect)rect radius:(float)radius {
    CGContextBeginPath(context);
    CGContextSaveGState(context);

    if (radius == 0) {
        CGContextTranslateCTM(context, CGRectGetMinX(rect), CGRectGetMinY(rect));
        CGContextAddRect(context, rect);

    } else {
        CGContextTranslateCTM(context, CGRectGetMinX(rect), CGRectGetMinY(rect));
        CGContextScaleCTM(context, radius, radius);
        float fw = CGRectGetWidth(rect) / radius;
        float fh = CGRectGetHeight(rect) / radius;

        CGContextMoveToPoint(context, fw, fh/2);
        CGContextAddArcToPoint(context, fw, fh, fw/2, fh, 1);
        CGContextAddArcToPoint(context, 0, fh, 0, fh/2, 1);
        CGContextAddArcToPoint(context, 0, 0, fw/2, 0, 1);
        CGContextAddArcToPoint(context, fw, 0, fw, fh/2, 1);
    }

    CGContextClosePath(context);
    CGContextRestoreGState(context);
}

#pragma mark -
#pragma mark Public

- (CGRect)as_convertRect:(CGRect)rect withContentMode:(UIViewContentMode)contentMode {
    if (self.size.width != rect.size.width || self.size.height != rect.size.height) {
        if (contentMode == UIViewContentModeLeft) {
            return CGRectMake(rect.origin.x,
                              rect.origin.y + floor(rect.size.height/2 - self.size.height/2),
                              self.size.width, self.size.height);

        } else if (contentMode == UIViewContentModeRight) {
            return CGRectMake(rect.origin.x + (rect.size.width - self.size.width),
                              rect.origin.y + floor(rect.size.height/2 - self.size.height/2),
                              self.size.width, self.size.height);

        } else if (contentMode == UIViewContentModeTop) {
            return CGRectMake(rect.origin.x + floor(rect.size.width/2 - self.size.width/2),
                              rect.origin.y,
                              self.size.width, self.size.height);

        } else if (contentMode == UIViewContentModeBottom) {
            return CGRectMake(rect.origin.x + floor(rect.size.width/2 - self.size.width/2),
                              rect.origin.y + floor(rect.size.height - self.size.height),
                              self.size.width, self.size.height);

        } else if (contentMode == UIViewContentModeCenter) {
            return CGRectMake(rect.origin.x + floor(rect.size.width/2 - self.size.width/2),
                              rect.origin.y + floor(rect.size.height/2 - self.size.height/2),
                              self.size.width, self.size.height);

        } else if (contentMode == UIViewContentModeBottomLeft) {
            return CGRectMake(rect.origin.x,
                              rect.origin.y + floor(rect.size.height - self.size.height),
                              self.size.width, self.size.height);

        } else if (contentMode == UIViewContentModeBottomRight) {
            return CGRectMake(rect.origin.x + (rect.size.width - self.size.width),
                              rect.origin.y + (rect.size.height - self.size.height),
                              self.size.width, self.size.height);

        } else if (contentMode == UIViewContentModeTopLeft) {
            return CGRectMake(rect.origin.x,
                              rect.origin.y,

                              self.size.width, self.size.height);

        } else if (contentMode == UIViewContentModeTopRight) {
            return CGRectMake(rect.origin.x + (rect.size.width - self.size.width),
                              rect.origin.y,
                              self.size.width, self.size.height);

        } else if (contentMode == UIViewContentModeScaleAspectFill) {
            CGSize imageSize = self.size;
            if (imageSize.height < imageSize.width) {
                imageSize.width  = floor((imageSize.width/imageSize.height) * rect.size.height);
                imageSize.height = rect.size.height;

            } else {
                imageSize.height = floor((imageSize.height/imageSize.width) * rect.size.width);
                imageSize.width  = rect.size.width;
            }
            return CGRectMake(rect.origin.x + floor(rect.size.width/2 - imageSize.width/2),
                              rect.origin.y + floor(rect.size.height/2 - imageSize.height/2),
                              imageSize.width, imageSize.height);

        } else if (contentMode == UIViewContentModeScaleAspectFit) {
            CGSize imageSize = self.size;
            if (imageSize.height < imageSize.width) {
                imageSize.height = floor((imageSize.height/imageSize.width) * rect.size.width);
                imageSize.width  = rect.size.width;

            } else {
                imageSize.width  = floor((imageSize.width/imageSize.height) * rect.size.height);
                imageSize.height = rect.size.height;
            }
            return CGRectMake(rect.origin.x + floor(rect.size.width/2 - imageSize.width/2),
                              rect.origin.y + floor(rect.size.height/2 - imageSize.height/2),
                              imageSize.width, imageSize.height);
        }
    }
    return rect;
}

- (void)as_drawInRect:(CGRect)rect contentMode:(UIViewContentMode)contentMode {
    BOOL   clip         = NO;
    CGRect originalRect = rect;
    if (self.size.width != rect.size.width || self.size.height != rect.size.height) {
        clip = contentMode != UIViewContentModeScaleAspectFill
        && contentMode != UIViewContentModeScaleAspectFit;
        rect = [self as_convertRect:rect withContentMode:contentMode];
    }

    CGContextRef context = UIGraphicsGetCurrentContext();
    if (clip) {
        CGContextSaveGState(context);
        CGContextAddRect(context, originalRect);
        CGContextClip(context);
    }

    [self drawInRect:rect];

    if (clip) {
        CGContextRestoreGState(context);
    }
}

- (void)as_drawInRect:(CGRect)rect radius:(CGFloat)radius {
    [self as_drawInRect:rect radius:radius contentMode:UIViewContentModeScaleToFill];
}

- (void)as_drawInRect:(CGRect)rect radius:(CGFloat)radius contentMode:(UIViewContentMode)contentMode {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    if (radius) {
        [self as_addRoundedRectToPath:context rect:rect radius:radius];
        CGContextClip(context);
    }

    [self as_drawInRect:rect contentMode:contentMode];

    CGContextRestoreGState(context);
}

- (UIImage *)as_drawImage:(UIImage *)inputImage inRect:(CGRect)frame {
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
    [self drawInRect:CGRectMake(0.0, 0.0, self.size.width, self.size.height)];
    [inputImage drawInRect:frame];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

- (UIImage *)as_drawImageInCenter:(UIImage *)inputImage {
    CGRect frame;
    frame.size = inputImage.size;
    frame.origin.x = (self.size.width - frame.size.width) / 2.f;
    frame.origin.y = (self.size.height - frame.size.height) / 2.f;
    return [self as_drawImage:inputImage inRect:frame];
}

- (UIImage *)as_imageWithMaskImage:(UIImage *)maskImage {
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();

    CGImageRef maskImageRef = [maskImage CGImage];

    // create a bitmap graphics context the size of the image
    CGContextRef mainViewContentContext = CGBitmapContextCreate (NULL, maskImage.size.width, maskImage.size.height, 8, 0, colorSpace, kCGImageAlphaPremultipliedLast);
    CGColorSpaceRelease(colorSpace);

    if (mainViewContentContext==NULL)
        return NULL;

    CGFloat ratio = 0;

    ratio = maskImage.size.width/ self.size.width;

    if(ratio * self.size.height < maskImage.size.height) {
        ratio = maskImage.size.height/ self.size.height;
    }

    CGRect rect1  = {{0, 0}, {maskImage.size.width, maskImage.size.height}};
    CGRect rect2  = {{-((self.size.width*ratio)-maskImage.size.width)/2 , -((self.size.height*ratio)-maskImage.size.height)/2}, {self.size.width*ratio, self.size.height*ratio}};


    CGContextClipToMask(mainViewContentContext, rect1, maskImageRef);
    CGContextDrawImage(mainViewContentContext, rect2, self.CGImage);


    // Create CGImageRef of the main view bitmap content, and then
    // release that bitmap context
    CGImageRef newImage = CGBitmapContextCreateImage(mainViewContentContext);
    CGContextRelease(mainViewContentContext);

    UIImage *theImage = [UIImage imageWithCGImage:newImage];

    CGImageRelease(newImage);

    // return the image
    return theImage;
}

@end
