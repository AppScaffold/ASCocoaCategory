//
//  UIButton+ASBackgroundColorForState.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 14-5-29.
//  Copyright (c) 2014年 AppScaffold. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (ASBackgroundColorForState)

- (void)as_setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state;
- (UIColor *)as_backgroundColorForState:(UIControlState)state;

@end
