//
//  UIImage+Rotation.m
//  NYXImagesKit
//
//  Created by @Nyx0uf on 02/05/11.
//  Copyright 2012 Nyx0uf. All rights reserved.
//  www.cocoaintheshell.com
//


#import "UIImage+ASRotating.h"
#import <QuartzCore/QuartzCore.h>
#import <Accelerate/Accelerate.h>
#import "Math+ASMacro.h"

@implementation UIImage (NYX_Rotating)

- (UIImage *)as_rotateInRadians:(CGFloat)radians flipOverHorizontalAxis:(BOOL)doHorizontalFlip verticalAxis:(BOOL)doVerticalFlip
{
	/// Create an ARGB bitmap context
	const size_t width = (size_t)CGImageGetWidth(self.CGImage);
	const size_t height = (size_t)CGImageGetHeight(self.CGImage);

	CGRect rotatedRect = CGRectApplyAffineTransform(CGRectMake(0., 0., width, height), CGAffineTransformMakeRotation(radians));

	CGContextRef bmContext = ASCreateARGBBitmapContext((size_t)rotatedRect.size.width, (size_t)rotatedRect.size.height, (size_t)rotatedRect.size.width * kASNumberOfComponentsPerARBGPixel, YES);
	if (!bmContext)
		return nil;

	/// Image quality
	CGContextSetShouldAntialias(bmContext, true);
	CGContextSetAllowsAntialiasing(bmContext, true);
	CGContextSetInterpolationQuality(bmContext, kCGInterpolationHigh);

	/// Rotation happen here (around the center)
	CGContextTranslateCTM(bmContext, +(rotatedRect.size.width / 2.0f), +(rotatedRect.size.height / 2.0f));
	CGContextRotateCTM(bmContext, radians);

  // Do flips
	CGContextScaleCTM(bmContext, (doHorizontalFlip ? -1.0f : 1.0f), (doVerticalFlip ? -1.0f : 1.0f));

	/// Draw the image in the bitmap context
	CGContextDrawImage(bmContext, CGRectMake(-(width / 2.0f), -(height / 2.0f), width, height), self.CGImage);

	/// Create an image object from the context
	CGImageRef resultImageRef = CGBitmapContextCreateImage(bmContext);
	UIImage* resultImage = [UIImage imageWithCGImage:resultImageRef scale:self.scale orientation:self.imageOrientation];

	/// Cleanup
	CGImageRelease(resultImageRef);
	CGContextRelease(bmContext);

	return resultImage;
}

- (UIImage *)as_rotateInRadians:(float)radians
{
  return [self as_rotateInRadians:radians flipOverHorizontalAxis:NO verticalAxis:NO];
}

- (UIImage *)as_rotateInDegrees:(float)degrees
{
	return [self as_rotateInRadians:(float)DEGREES_TO_RADIANS(degrees)];
}

- (UIImage *)as_verticalFlip
{
	return [self as_rotateInRadians:0. flipOverHorizontalAxis:NO verticalAxis:YES];
}

- (UIImage *)as_horizontalFlip
{
  return [self as_rotateInRadians:0. flipOverHorizontalAxis:YES verticalAxis:NO];
}

- (UIImage *)as_rotateImagePixelsInRadians:(float)radians
{
	/// Create an ARGB bitmap context
	const size_t width = (size_t)(self.size.width * self.scale);
	const size_t height = (size_t)(self.size.height * self.scale);
	const size_t bytesPerRow = width * kASNumberOfComponentsPerARBGPixel;
	CGContextRef bmContext = ASCreateARGBBitmapContext(width, height, bytesPerRow, YES);
	if (!bmContext)
		return nil;

	/// Draw the image in the bitmap context
	CGContextDrawImage(bmContext, CGRectMake(0.0f, 0.0f, width, height), self.CGImage);

	/// Grab the image raw data
	UInt8* data = (UInt8*)CGBitmapContextGetData(bmContext);
	if (!data)
	{
		CGContextRelease(bmContext);
		return nil;
	}

	vImage_Buffer src = {data, height, width, bytesPerRow};
	vImage_Buffer dest = {data, height, width, bytesPerRow};
	Pixel_8888 bgColor = {0, 0, 0, 0};
	vImageRotate_ARGB8888(&src, &dest, NULL, radians, bgColor, kvImageBackgroundColorFill);

	CGImageRef rotatedImageRef = CGBitmapContextCreateImage(bmContext);
	UIImage* rotated = [UIImage imageWithCGImage:rotatedImageRef scale:self.scale orientation:self.imageOrientation];

	/// Cleanup
	CGImageRelease(rotatedImageRef);
	CGContextRelease(bmContext);

	return rotated;
}

- (UIImage *)as_rotateImagePixelsInDegrees:(float)degrees
{
	return [self as_rotateImagePixelsInRadians:(float)DEGREES_TO_RADIANS(degrees)];
}

@end
