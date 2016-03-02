//
//  NSDictionary+Common.m
//  AppScaffold Cocoa Category
//
//  Created by Square on 03/02/16.
//  Copyright (c) 2016-2017 AppScaffold
//

#import "NSDictionary+Common.h"

@implementation NSDictionary (ASCommon)

- (BOOL)containsObjectForKey:(id)key {
	return [[self allKeys] containsObject:key];
}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (BOOL)isEmpty {
	return [self count] == 0 ? YES : NO;
}

@end
