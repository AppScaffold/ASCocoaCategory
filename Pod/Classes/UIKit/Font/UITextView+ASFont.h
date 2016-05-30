//
//  UITextView+ASFont.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 15/3/2.
//  Copyright (c) 2015年 AppScaffold. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (ASFont)

@property (nonatomic, strong, setter=as_setFontName:) NSString *as_fontName;
@property (nonatomic, assign, setter=as_setFontSize:) CGFloat as_fontSize;

@end
