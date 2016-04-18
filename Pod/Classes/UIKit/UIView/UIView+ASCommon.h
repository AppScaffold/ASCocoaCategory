//
//  UIView+ASCommon.h
//  AppScaffold Cocoa Category
//
//  Created by Square on 03/02/16.
//  Copyright (c) 2016-2017 AppScaffold
//

#import <UIKit/UIKit.h>

@interface UIView (ASCommon)

/**
 * Finds the first descendant view (including this view) that is a member of a particular class.
 */
- (UIView*)as_descendantOrSelfWithClass:(Class)cls;

/**
 * Finds the first ancestor view (including this view) that is a member of a particular class.
 */
- (UIView*)as_ancestorOrSelfWithClass:(Class)cls;

/**
 * Removes all subviews.
 */
- (void)as_removeAllSubviews;

@end
