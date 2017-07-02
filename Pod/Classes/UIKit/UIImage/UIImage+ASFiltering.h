//
//  UIImage+Filters.h
//  NYXImagesKit
//
//  Created by @Nyx0uf on 02/05/11.
//  Copyright 2012 Nyx0uf. All rights reserved.
//  www.cocoaintheshell.com
//


#import "ASImagesHelper.h"


@interface UIImage (ASFiltering)

- (UIImage *)as_brightenWithValue:(float)factor;

- (UIImage *)as_contrastAdjustmentWithValue:(float)value;

- (UIImage *)as_edgeDetectionWithBias:(NSInteger)bias;

- (UIImage *)as_embossWithBias:(NSInteger)bias;

- (UIImage *)as_gammaCorrectionWithValue:(float)value;

- (UIImage *)as_grayscale;

- (UIImage *)as_invert;

- (UIImage *)as_opacity:(float)value;

- (UIImage *)as_sepia;

- (UIImage *)as_sharpenWithBias:(NSInteger)bias;

- (UIImage *)as_unsharpenWithBias:(NSInteger)bias;

@end
