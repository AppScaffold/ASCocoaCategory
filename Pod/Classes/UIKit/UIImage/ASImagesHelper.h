//
//  ASImagesHelper.h
//  NYXImagesKit
//
//  Created by Matthias Tretter on 02/06/11.
//  Originally Created by @Nyx0uf on 02/05/11.
//  Copyright 2012 Nyx0uf. All rights reserved.
//  www.cocoaintheshell.com
//


/* Number of components for an opaque grey colorSpace = 3 */
#define kASNumberOfComponentsPerGreyPixel 3
/* Number of components for an ARGB pixel (Alpha / Red / Green / Blue) = 4 */
#define kASNumberOfComponentsPerARBGPixel 4
/* Minimun value for a pixel component */
#define kASMinPixelComponentValue (UInt8)0
/* Maximum value for a pixel component */
#define kASMaxPixelComponentValue (UInt8)255

CGContextRef ASCreateARGBBitmapContext(const size_t width, const size_t height, const size_t bytesPerRow, BOOL withAlpha);
CGImageRef ASCreateGradientImage(const size_t pixelsWide, const size_t pixelsHigh, const CGFloat fromAlpha, const CGFloat toAlpha);
CIContext* ASGetCIContext(void);
CGColorSpaceRef ASGetRGBColorSpace(void);
void ASImagesKitRelease(void);
BOOL ASImageHasAlpha(CGImageRef imageRef);
