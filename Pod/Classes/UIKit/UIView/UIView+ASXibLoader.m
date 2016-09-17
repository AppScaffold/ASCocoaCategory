//
//  UIView+ASXibLoader.m
//  Pods
//
//  Created by Whirlwind on 2016/9/17.
//
//

#import "UIView+ASXibLoader.h"

@implementation UIView (ASXibLoader)

+ (instancetype)as_loadFromNib{
    return [self as_loadFromNibInBundle:[NSBundle mainBundle]];
}

+ (instancetype)as_loadFromNibInBundle:(NSBundle *)bundle {
    return [[bundle loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] objectAtIndex:0];
}

@end
