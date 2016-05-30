//
//  CGAffineTransform+UIInterfaceOrientation.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 15/1/26.
//  Copyright (c) 2015年 AppScaffold. All rights reserved.
//

#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>

CG_EXTERN CGAffineTransform CGAffineTransformForUIInterfaceOrientation(UIInterfaceOrientation orientation);
CG_EXTERN UIInterfaceOrientation UIInterfaceOrientationForCGAffineTransform(CGAffineTransform transform);
CG_EXTERN UIInterfaceOrientation UIInterfaceOrientationMakeTransform(UIInterfaceOrientation orientation, CGAffineTransform transform);
