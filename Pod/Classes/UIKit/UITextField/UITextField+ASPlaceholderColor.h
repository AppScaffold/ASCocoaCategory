//
//  UITextField+ASPlaceholderColor.h
//  Pods
//
//  Created by Whirlwind on 2016/7/30.
//
//

#import <UIKit/UIKit.h>

@interface UITextField (ASPlaceholderColor)

/*! Change the placeholder color by set the attributePlaceholder
 *
 *  set this property MUST be after set `placeholder` property.
 */
@property (nonatomic, strong, setter=as_setPlaceholderColor:) UIColor *as_placeholderColor;

@end
