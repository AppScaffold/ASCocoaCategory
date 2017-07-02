//
//  UIImage+Rotation.h
//  NYXImagesKit
//
//  Created by @Nyx0uf on 02/05/11.
//  Copyright 2012 Nyx0uf. All rights reserved.
//  www.cocoaintheshell.com
//


#import "ASImagesHelper.h"


@interface UIImage (NYX_Rotating)

- (UIImage *)as_rotateInRadians:(float)radians;

- (UIImage *)as_rotateInDegrees:(float)degrees;

- (UIImage *)as_rotateImagePixelsInRadians:(float)radians;

- (UIImage *)as_rotateImagePixelsInDegrees:(float)degrees;

- (UIImage *)as_verticalFlip;

- (UIImage *)as_horizontalFlip;

@end
