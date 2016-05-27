//
//  UIView+ASBounds.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-12-26.
//  Copyright (c) 2013年 AppScaffold. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ASBounds)

@property (nonatomic, setter=as_setBoundsLeft:) CGFloat as_boundsLeft;

@property (nonatomic, setter=as_setBoundsRight:) CGFloat as_boundsRight;

@property (nonatomic, setter=as_setBoundsTop:) CGFloat as_boundsTop;

@property (nonatomic, setter=as_setBoundsBottom:) CGFloat as_boundsBottom;

@property (nonatomic, setter=as_setBoundsWidth:) CGFloat as_boundsWidth;

@property (nonatomic, setter=as_setBoundsHeight:) CGFloat as_boundsHeight;

@property (nonatomic, setter=as_setBoundsOrigin:) CGPoint as_boundsOrigin;

@property (nonatomic, setter=as_setBoundsSize:) CGSize as_boundsSize;

@property (nonatomic, readonly) CGFloat as_boundsCenterX;

@property (nonatomic, readonly) CGFloat as_boundsCenterY;

@property (nonatomic, readonly) CGPoint as_boundsCenter;

@end
