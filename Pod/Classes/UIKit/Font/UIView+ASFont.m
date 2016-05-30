//
//  UIView+ASFont.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 15/3/2.
//  Copyright (c) 2015年 AppScaffold. All rights reserved.
//

#import "UIView+ASFont.h"

@implementation UIView (ASFont)

- (void)setFont:(UIFont *)font {
    // do nothing
}

- (UIFont *)font {
    return nil;
}

- (void)as_setFontName:(NSString *)fontName {
    if ([fontName isEqualToString:@"systemFont"]) {
        self.font = [UIFont systemFontOfSize:self.as_fontSize];
    } else if ([fontName isEqualToString:@"boldSystemFont"]) {
        self.font = [UIFont boldSystemFontOfSize:self.as_fontSize];
    } else if ([fontName isEqualToString:@"italicSystemFont"]) {
        self.font = [UIFont italicSystemFontOfSize:self.as_fontSize];
    } else {
        self.font = [UIFont fontWithName:fontName size:self.as_fontSize];
    }
}

- (NSString *)as_fontName {
    return self.font.fontName;
}

- (void)as_setFontSize:(CGFloat)fontSize {
    self.font = [self.font fontWithSize:fontSize];
}

- (CGFloat)as_fontSize {
    return self.font.pointSize;
}

@end
