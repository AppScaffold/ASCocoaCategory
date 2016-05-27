//
//  UIView+ASBackground.h
//  AppScaffold Cocoa Category
//
//  Created by Square on 03/02/16.
//  Copyright (c) 2016-2017 AppScaffold
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (ASBackground)

@property (nonatomic, readonly) UIImageView *as_backgroundImageView;

/**
 *  Set a background image into UIView;
 *
 *  @param image The image object;
 */
- (void)as_setBackgroundImage:(UIImage *)image;

@end
