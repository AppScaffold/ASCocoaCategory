//
//  UIView+ASFrame.h
//  AppScaffold Cocoa Category
//
//  Created by Square on 03/02/16.
//  Copyright (c) 2016-2017 AppScaffold
//

#import <UIKit/UIKit.h>

@interface UIView (ASFrame)

/**
 * Shortcut for frame.origin.x.
 *
 * Sets frame.origin.x = as_left
 */
@property (nonatomic) CGFloat as_left;

/**
 * Shortcut for frame.origin.y
 */
@property (nonatomic) CGFloat as_top;

/**
 * Shortcut for frame.origin.x + frame.size.width
 */
@property (nonatomic) CGFloat as_right;

/**
 * Shortcut for frame.origin.y + frame.size.height
 */
@property (nonatomic) CGFloat as_bottom;

/**
 * Shortcut for frame.size.width
 */
@property (nonatomic) CGFloat as_width;

/**
 * Shortcut for frame.size.height
 */
@property (nonatomic) CGFloat as_height;

/**
 * Shortcut for center.x
 */
@property (nonatomic) CGFloat as_centerX;

/**
 * Shortcut for center.y
 */
@property (nonatomic) CGFloat as_centerY;

/**
 * Return the x coordinate on the screen.
 */
@property (nonatomic, readonly) CGFloat as_ScreenX;

/**
 * Return the y coordinate on the screen.
 */
@property (nonatomic, readonly) CGFloat as_ScreenY;

/**
 * Return the x coordinate on the screen, taking into account scroll views.
 */
@property (nonatomic, readonly) CGFloat as_screenViewX;

/**
 * Return the y coordinate on the screen, taking into account scroll views.
 */
@property (nonatomic, readonly) CGFloat as_screenViewY;

/**
 * Return the view frame on the screen, taking into account scroll views.
 */
@property (nonatomic, readonly) CGRect as_screenFrame;

/**
 * Shortcut for frame.origin
 */
@property (nonatomic) CGPoint as_origin;

/**
 * Shortcut for frame.size
 */
@property (nonatomic) CGSize as_size;

/**
 * Calculates the offset of this view from another view in screen coordinates.
 *
 * otherView should be a parent view of this view.
 */
- (CGPoint)as_offsetFromView:(UIView*)otherView;

@end
