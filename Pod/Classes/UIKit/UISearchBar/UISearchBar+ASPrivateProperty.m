//
//  UISearchBar+ASPrivateProperty.m
//  Zeemu
//
//  Created by Whirlwind on 2017/1/14.
//  Copyright © 2017年 Zeemu. All rights reserved.
//

#import "UISearchBar+ASPrivateProperty.h"

@implementation UISearchBar (ASPrivateProperty)

- (UITextField *)as_textField {
    return [self valueForKey:@"_searchField"];
}

- (UIButton *)as_clearButton {
    return [self.as_textField valueForKey:@"_clearButton"];
}

- (UIImageView *)as_searchIconView {
    return (UIImageView *)[self.as_textField leftView];
}

@end
