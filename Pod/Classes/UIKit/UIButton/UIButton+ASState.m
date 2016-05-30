//
//  UIButton+ASState.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-6-15.
//
//

#import "UIButton+ASState.h"
#import "UIButton+ASBackgroundColorForState.h"

@implementation UIButton (ASState)

#pragma mark - title
- (void)as_setTitleForStateNormal:(NSString *)title {
    [self setTitle:title forState:UIControlStateNormal];
}

- (NSString *)as_titleForStateNormal {
    return [self titleForState:UIControlStateNormal];
}

- (void)as_setTitleForStateHighlighted:(NSString *)title {
    [self setTitle:title forState:UIControlStateHighlighted];
}

- (NSString *)as_titleForStateHighlighted {
    return [self titleForState:UIControlStateHighlighted];
}

- (void)as_setTitleForStateSelected:(NSString *)title {
    [self setTitle:title forState:UIControlStateSelected];
}

- (NSString *)as_titleForStateSelected {
    return [self titleForState:UIControlStateSelected];
}

- (void)as_setTitleForStateDisabled:(NSString *)title {
    [self setTitle:title forState:UIControlStateDisabled];
}

- (NSString *)as_titleForStateDisabled {
    return [self titleForState:UIControlStateDisabled];
}

- (void)as_setTitleForStateHighlightedWhenSelected:(NSString *)titleForStateHighlightedWhenSelected {
    [self setTitle:titleForStateHighlightedWhenSelected forState:UIControlStateSelected|UIControlStateHighlighted];
}

- (NSString *)as_titleForStateHighlightedWhenSelected {
    return [self titleForState:UIControlStateSelected|UIControlStateHighlighted];
}

- (void)as_setTitleForStateDisabledWhenSelected:(NSString *)titleForStateDisabledWhenSelected {
    [self setTitle:titleForStateDisabledWhenSelected forState:UIControlStateSelected|UIControlStateDisabled];
}

- (NSString *)as_titleForStateDisabledWhenSelected {
    return [self titleForState:UIControlStateSelected|UIControlStateDisabled];
}

#pragma mark - title color
- (void)as_setTitleColorForStateNormal:(UIColor *)color {
    [self setTitleColor:color forState:UIControlStateNormal];
}

- (UIColor *)as_titleColorForStateNormal {
    return [self titleColorForState:UIControlStateNormal];
}

- (void)as_setTitleColorForStateHighlighted:(UIColor *)color {
    [self setTitleColor:color forState:UIControlStateHighlighted];
}

- (UIColor *)as_titleColorForStateHighlighted {
    return [self titleColorForState:UIControlStateHighlighted];
}

- (void)as_setTitleColorForStateSelected:(UIColor *)color {
    [self setTitleColor:color forState:UIControlStateSelected];
}

- (UIColor *)as_titleColorForStateSelected {
    return [self titleColorForState:UIControlStateSelected];
}

- (void)as_setTitleColorForStateDisabled:(UIColor *)color {
    [self setTitleColor:color forState:UIControlStateDisabled];
}

- (UIColor *)as_titleColorForStateDisabled {
    return [self titleColorForState:UIControlStateDisabled];
}

- (void)as_setTitleColorForStateHighlightedWhenSelected:(UIColor *)titleColorForStateHighlightedWhenSelected {
    [self setTitleColor:titleColorForStateHighlightedWhenSelected forState:UIControlStateSelected|UIControlStateHighlighted];
}

- (UIColor *)as_titleColorForStateHighlightedWhenSelected {
    return [self titleColorForState:UIControlStateSelected|UIControlStateHighlighted];
}

- (void)as_setTitleColorForStateDisabledWhenSelected:(UIColor *)titleColorForStateDisabledWhenSelected {
    [self setTitleColor:titleColorForStateDisabledWhenSelected forState:UIControlStateSelected|UIControlStateDisabled];
}

- (UIColor *)as_titleColorForStateDisabledWhenSelected {
    return [self titleColorForState:UIControlStateDisabled|UIControlStateSelected];
}

#pragma mark - title shadow color
- (void)as_setTitleShadowColorForStateNormal:(UIColor *)color {
    [self setTitleShadowColor:color forState:UIControlStateNormal];
}

- (UIColor *)as_titleShadowColorForStateNormal {
    return [self titleShadowColorForState:UIControlStateNormal];
}

- (void)as_setTitleShadowColorForStateHighlighted:(UIColor *)color {
    [self setTitleShadowColor:color forState:UIControlStateHighlighted];
}

- (UIColor *)as_titleShadowColorForStateHighlighted {
    return [self titleShadowColorForState:UIControlStateHighlighted];
}

- (void)as_setTitleShadowColorForStateSelected:(UIColor *)color {
    [self setTitleShadowColor:color forState:UIControlStateSelected];
}

- (UIColor *)as_titleShadowColorForStateSelected {
    return [self titleShadowColorForState:UIControlStateSelected];
}

- (void)as_setTitleShadowColorForStateDisabled:(UIColor *)color {
    [self setTitleShadowColor:color forState:UIControlStateDisabled];
}

- (UIColor *)as_titleShadowColorForStateDisabled {
    return [self titleShadowColorForState:UIControlStateDisabled];
}

- (void)as_setTitleShadowColorForStateDisabledWhenSelected:(UIColor *)titleShadowColorForStateDisabledWhenSelected {
    [self setTitleShadowColor:titleShadowColorForStateDisabledWhenSelected forState:UIControlStateDisabled|UIControlStateSelected];
}

- (UIColor *)as_titleShadowColorForStateDisabledWhenSelected {
    return [self titleShadowColorForState:UIControlStateSelected|UIControlStateDisabled];
}

- (void)as_setTitleShadowColorForStateHighlightedWhenSelected:(UIColor *)titleShadowColorForStateHighlightedWhenSelected {
    [self setTitleShadowColor:titleShadowColorForStateHighlightedWhenSelected forState:UIControlStateSelected|UIControlStateHighlighted];
}

- (UIColor *)as_titleShadowColorForStateHighlightedWhenSelected {
    return [self titleShadowColorForState:UIControlStateHighlighted|UIControlStateSelected];
}

#pragma mark - image
- (void)as_setImageForStateNormal:(UIImage *)image {
    [self setImage:image forState:UIControlStateNormal];
}

- (UIImage *)as_imageForStateNormal {
    return [self imageForState:UIControlStateNormal];
}

- (void)as_setImageForStateHighlighted:(UIImage *)image {
    [self setImage:image forState:UIControlStateHighlighted];
}

- (UIImage *)as_imageForStateHighlighted {
    return [self imageForState:UIControlStateHighlighted];
}

- (void)as_setImageForStateSelected:(UIImage *)image {
    [self setImage:image forState:UIControlStateSelected];
}

- (UIImage *)as_imageForStateSelected {
    return [self imageForState:UIControlStateSelected];
}

- (void)as_setImageForStateDisabled:(UIImage *)image {
    [self setImage:image forState:UIControlStateDisabled];
}

- (UIImage *)as_imageForStateDisabled {
    return [self imageForState:UIControlStateDisabled];
}

- (void)as_setImageForStateDisabledWhenSelected:(UIImage *)imageForStateDisabledWhenSelected {
    [self setImage:imageForStateDisabledWhenSelected forState:UIControlStateSelected|UIControlStateDisabled];
}

- (UIImage *)as_imageForStateDisabledWhenSelected {
    return [self imageForState:UIControlStateDisabled|UIControlStateSelected];
}

- (void)as_setImageForStateHighlightedWhenSelected:(UIImage *)imageForStateHighlightedWhenSelected {
    [self setImage:imageForStateHighlightedWhenSelected forState:UIControlStateSelected|UIControlStateHighlighted];
}

- (UIImage *)as_imageForStateHighlightedWhenSelected {
    return [self imageForState:UIControlStateHighlighted|UIControlStateSelected];
}

#pragma mark - background image
- (void)as_setBackgroundImageForStateNormal:(UIImage *)image {
    [self setBackgroundImage:image forState:UIControlStateNormal];
}

- (UIImage *)as_backgroundImageForStateNormal {
    return [self backgroundImageForState:UIControlStateNormal];
}

- (void)as_setBackgroundImageForStateHighlighted:(UIImage *)image {
    [self setBackgroundImage:image forState:UIControlStateHighlighted];
}

- (UIImage *)as_backgroundImageForStateHighlighted {
    return [self backgroundImageForState:UIControlStateHighlighted];
}

- (void)as_setBackgroundImageForStateSelected:(UIImage *)image {
    [self setBackgroundImage:image forState:UIControlStateSelected];
}

- (UIImage *)as_backgroundImageForStateSelected {
    return [self backgroundImageForState:UIControlStateSelected];
}

- (void)as_setBackgroundImageForStateDisabled:(UIImage *)image {
    [self setBackgroundImage:image forState:UIControlStateDisabled];
}

- (UIImage *)as_backgroundImageForStateDisabled {
    return [self backgroundImageForState:UIControlStateDisabled];
}

- (void)as_setBackgroundImageForStateDisabledWhenSelected:(UIImage *)imageForStateDisabledWhenSelected {
    [self setBackgroundImage:imageForStateDisabledWhenSelected forState:UIControlStateSelected|UIControlStateDisabled];
}

- (UIImage *)as_backgroundImageForStateDisabledWhenSelected {
    return [self backgroundImageForState:UIControlStateDisabled|UIControlStateSelected];
}

- (void)as_setBackgroundImageForStateHighlightedWhenSelected:(UIImage *)imageForStateHighlightedWhenSelected {
    [self setBackgroundImage:imageForStateHighlightedWhenSelected forState:UIControlStateSelected|UIControlStateHighlighted];
}

- (UIImage *)as_backgroundImageForStateHighlightedWhenSelected {
    return [self backgroundImageForState:UIControlStateHighlighted|UIControlStateSelected];
}

#pragma mark - background color

- (void)as_setBackgroundColorForStateNormal:(UIColor *)bgcolor {
    [self as_setBackgroundColor:bgcolor forState:UIControlStateNormal];
}

- (void)as_setBackgroundColorForStateHighlighted:(UIColor *)bgcolor {
    [self as_setBackgroundColor:bgcolor forState:UIControlStateHighlighted];
}

- (void)as_setBackgroundColorForStateSelected:(UIColor *)bgcolor {
    [self as_setBackgroundColor:bgcolor forState:UIControlStateSelected];
}

- (void)as_setBackgroundColorForStateDisabled:(UIColor *)bgcolor {
    [self as_setBackgroundColor:bgcolor forState:UIControlStateDisabled];
}

- (void)as_setBackgroundColorForStateDisabledWhenSelected:(UIColor *)bgcolor {
    [self as_setBackgroundColor:bgcolor forState:UIControlStateDisabled|UIControlStateSelected];
}

- (void)as_setBackgroundColorForStateHighlightedWhenSelected:(UIColor *)bgcolor {
    [self as_setBackgroundColor:bgcolor forState:UIControlStateHighlighted|UIControlStateSelected];
}

- (UIColor *)as_backgroundColorForStateNormal {
    return [self as_backgroundColorForState:UIControlStateNormal];
}

- (UIColor *)as_backgroundColorForStateHighlighted {
    return [self as_backgroundColorForState:UIControlStateHighlighted];
}

- (UIColor *)as_backgroundColorForStateSelected {
    return [self as_backgroundColorForState:UIControlStateSelected];
}

- (UIColor *)as_backgroundColorForStateDisabled {
    return [self as_backgroundColorForState:UIControlStateDisabled];
}

- (UIColor *)as_backgroundColorForStateDisabledWhenSelected {
    return [self as_backgroundColorForState:UIControlStateSelected|UIControlStateDisabled];
}

- (UIColor *)as_backgroundColorForStateHighlightedWhenSelected {
    return [self as_backgroundColorForState:UIControlStateSelected|UIControlStateHighlighted];
}

#pragma mark - title
- (void)as_setAttributedTitleForStateNormal:(NSAttributedString *)title {
    [self setAttributedTitle:title forState:UIControlStateNormal];
}

- (NSAttributedString *)as_attributedTitleForStateNormal {
    return [self attributedTitleForState:UIControlStateNormal];
}

- (void)as_setAttributedTitleForStateHighlighted:(NSAttributedString *)title {
    [self setAttributedTitle:title forState:UIControlStateHighlighted];
}

- (NSAttributedString *)as_attributedTitleForStateHighlighted {
    return [self attributedTitleForState:UIControlStateHighlighted];
}

- (void)as_setAttributedTitleForStateSelected:(NSAttributedString *)title {
    [self setAttributedTitle:title forState:UIControlStateSelected];
}

- (NSAttributedString *)as_attributedTitleForStateSelected {
    return [self attributedTitleForState:UIControlStateSelected];
}

- (void)as_setAttributedTitleForStateDisabled:(NSAttributedString *)title {
    [self setAttributedTitle:title forState:UIControlStateDisabled];
}

- (NSAttributedString *)as_attributedTitleForStateDisabled {
    return [self attributedTitleForState:UIControlStateDisabled];
}

- (void)as_setAttributedTitleForStateDisabledWhenSelected:(NSAttributedString *)attributedTitleForStateDisabledWhenSelected {
    [self setAttributedTitle:attributedTitleForStateDisabledWhenSelected forState:UIControlStateSelected|UIControlStateDisabled];
}

- (NSAttributedString *)as_attributedTitleForStateDisabledWhenSelected {
    return [self attributedTitleForState:UIControlStateDisabled|UIControlStateSelected];
}

- (void)as_setAttributedTitleForStateHighlightedWhenSelected:(NSAttributedString *)attributedTitleForStateHighlightedWhenSelected {
    [self setAttributedTitle:attributedTitleForStateHighlightedWhenSelected forState:UIControlStateSelected|UIControlStateHighlighted];
}

- (NSAttributedString *)as_attributedTitleForStateHighlightedWhenSelected {
    return [self attributedTitleForState:UIControlStateHighlighted|UIControlStateSelected];
}

@end
