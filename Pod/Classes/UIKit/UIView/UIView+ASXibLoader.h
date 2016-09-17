//
//  UIView+ASXibLoader.h
//  Pods
//
//  Created by Whirlwind on 2016/9/17.
//
//

#import <UIKit/UIKit.h>

@interface UIView (ASXibLoader)

+ (instancetype)as_loadFromNib;

+ (instancetype)as_loadFromNibInBundle:(NSBundle *)bundl;

@end
