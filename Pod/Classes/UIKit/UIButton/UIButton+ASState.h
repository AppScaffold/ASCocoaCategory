//
//  UIButton+ASState.h
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 13-6-15.
//
//

#import <UIKit/UIKit.h>

@interface UIButton (ASState)

@property (nonatomic, strong, setter=as_setTitleForStateNormal:) NSString *as_titleForStateNormal;
@property (nonatomic, strong, setter=as_setTitleForStateHighlighted:) NSString *as_titleForStateHighlighted;
@property (nonatomic, strong, setter=as_setTitleForStateSelected:) NSString *as_titleForStateSelected;
@property (nonatomic, strong, setter=as_setTitleForStateDisabled:) NSString *as_titleForStateDisabled;
@property (nonatomic, strong, setter=as_setTitleForStateHighlightedWhenSelected:) NSString *as_titleForStateHighlightedWhenSelected;
@property (nonatomic, strong, setter=as_setTitleForStateDisabledWhenSelected:) NSString *as_titleForStateDisabledWhenSelected;

@property (nonatomic, strong, setter=as_setTitleColorForStateNormal:) UIColor *as_titleColorForStateNormal;
@property (nonatomic, strong, setter=as_setTitleColorForStateHighlighted:) UIColor *as_titleColorForStateHighlighted;
@property (nonatomic, strong, setter=as_setTitleColorForStateSelected:) UIColor *as_titleColorForStateSelected;
@property (nonatomic, strong, setter=as_setTitleColorForStateDisabled:) UIColor *as_titleColorForStateDisabled;
@property (nonatomic, strong, setter=as_setTitleColorForStateHighlightedWhenSelected:) UIColor *as_titleColorForStateHighlightedWhenSelected;
@property (nonatomic, strong, setter=as_setTitleColorForStateDisabledWhenSelected:) UIColor *as_titleColorForStateDisabledWhenSelected;

@property (nonatomic, strong, setter=as_setTitleShadowColorForStateNormal:) UIColor *as_titleShadowColorForStateNormal;
@property (nonatomic, strong, setter=as_setTitleShadowColorForStateHighlighted:) UIColor *as_titleShadowColorForStateHighlighted;
@property (nonatomic, strong, setter=as_setTitleShadowColorForStateSelected:) UIColor *as_titleShadowColorForStateSelected;
@property (nonatomic, strong, setter=as_setTitleShadowColorForStateDisabled:) UIColor *as_titleShadowColorForStateDisabled;
@property (nonatomic, strong, setter=as_setTitleShadowColorForStateHighlightedWhenSelected:) UIColor *as_titleShadowColorForStateHighlightedWhenSelected;
@property (nonatomic, strong, setter=as_setTitleShadowColorForStateDisabledWhenSelected:) UIColor *as_titleShadowColorForStateDisabledWhenSelected;

@property (nonatomic, strong, setter=as_setImageForStateNormal:) UIImage *as_imageForStateNormal;
@property (nonatomic, strong, setter=as_setImageForStateHighlighted:) UIImage *as_imageForStateHighlighted;
@property (nonatomic, strong, setter=as_setImageForStateSelected:) UIImage *as_imageForStateSelected;
@property (nonatomic, strong, setter=as_setImageForStateDisabled:) UIImage *as_imageForStateDisabled;
@property (nonatomic, strong, setter=as_setImageForStateHighlightedWhenSelected:) UIImage *as_imageForStateHighlightedWhenSelected;
@property (nonatomic, strong, setter=as_setImageForStateDisabledWhenSelected:) UIImage *as_imageForStateDisabledWhenSelected;

@property (nonatomic, strong, setter=as_setBackgroundImageForStateNormal:) UIImage *as_backgroundImageForStateNormal;
@property (nonatomic, strong, setter=as_setBackgroundImageForStateHighlighted:) UIImage *as_backgroundImageForStateHighlighted;
@property (nonatomic, strong, setter=as_setBackgroundImageForStateSelected:) UIImage *as_backgroundImageForStateSelected;
@property (nonatomic, strong, setter=as_setBackgroundImageForStateDisabled:) UIImage *as_backgroundImageForStateDisabled;
@property (nonatomic, strong, setter=as_setBackgroundImageForStateHighlightedWhenSelected:) UIImage *as_backgroundImageForStateHighlightedWhenSelected;
@property (nonatomic, strong, setter=as_setBackgroundImageForStateDisabledWhenSelected:) UIImage *as_backgroundImageForStateDisabledWhenSelected;

@property (nonatomic, strong, setter=as_setBackgroundColorForStateNormal:) UIColor *as_backgroundColorForStateNormal;
@property (nonatomic, strong, setter=as_setBackgroundColorForStateHighlighted:) UIColor *as_backgroundColorForStateHighlighted;
@property (nonatomic, strong, setter=as_setBackgroundColorForStateSelected:) UIColor *as_backgroundColorForStateSelected;
@property (nonatomic, strong, setter=as_setBackgroundColorForStateDisabled:) UIColor *as_backgroundColorForStateDisabled;
@property (nonatomic, strong, setter=as_setBackgroundColorForStateHighlightedWhenSelected:) UIColor *as_backgroundColorForStateHighlightedWhenSelected;
@property (nonatomic, strong, setter=as_setBackgroundColorForStateDisabledWhenSelected:) UIColor *as_backgroundColorForStateDisabledWhenSelected;

@property (nonatomic, strong, setter=as_setAttributedTitleForStateNormal:) NSAttributedString *as_attributedTitleForStateNormal                  NS_AVAILABLE_IOS(6_0);
@property (nonatomic, strong, setter=as_setAttributedTitleForStateHighlighted:) NSAttributedString *as_attributedTitleForStateHighlighted             NS_AVAILABLE_IOS(6_0);
@property (nonatomic, strong, setter=as_setAttributedTitleForStateSelected:) NSAttributedString *as_attributedTitleForStateSelected                NS_AVAILABLE_IOS(6_0);
@property (nonatomic, strong, setter=as_setAttributedTitleForStateDisabled:) NSAttributedString *as_attributedTitleForStateDisabled                NS_AVAILABLE_IOS(6_0);
@property (nonatomic, strong, setter=as_setAttributedTitleForStateHighlightedWhenSelected:) NSAttributedString *as_attributedTitleForStateHighlightedWhenSelected NS_AVAILABLE_IOS(6_0);
@property (nonatomic, strong, setter=as_setAttributedTitleForStateDisabledWhenSelected:) NSAttributedString *as_attributedTitleForStateDisabledWhenSelected    NS_AVAILABLE_IOS(6_0);

@end
