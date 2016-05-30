//
//  UILabel+ASFont.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 15/2/13.
//  Copyright (c) 2015年 AppScaffold. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (ASFont)

@property (nonatomic, strong, setter=as_setFontName:) NSString *as_fontName;
@property (nonatomic, assign, setter=as_setFontSize:) CGFloat as_fontSize;

@end
