//
//  NSBundle+ASMainBundle.m
//  Pods
//
//  Created by Whirlwind on 2016/10/2.
//
//

#import "NSBundle+ASMainBundle.h"

@implementation NSBundle (ASMainBundle)

- (BOOL)as_isMainBundle {
    return self == [NSBundle mainBundle];
}

@end
