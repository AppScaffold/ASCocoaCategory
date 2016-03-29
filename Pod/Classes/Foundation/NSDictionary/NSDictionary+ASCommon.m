//
//  NSDictionary+Common.m
//  AppScaffold Cocoa Category
//
//  Created by Square on 03/02/16.
//  Copyright (c) 2016-2017 AppScaffold
//

#import "NSDictionary+Common.h"

@implementation NSDictionary (ASCommon)

///////////////////////////////////////////////////////////////////////////////////////////////////
- (BOOL)as_containsObjectForKey:(id)key {
	return [[self allKeys] containsObject:key];
}

@end
