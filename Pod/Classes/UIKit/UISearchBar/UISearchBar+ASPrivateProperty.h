//
//  UISearchBar+ASPrivateProperty.h
//  Zeemu
//
//  Created by Whirlwind on 2017/1/14.
//  Copyright © 2017年 Zeemu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UISearchBar (ASPrivateProperty)

@property (nonatomic, readonly) UITextField *as_textField;
@property (nonatomic, readonly) UIButton *as_clearButton;
@property (nonatomic, readonly) UIImageView *as_searchIconView;

@end
