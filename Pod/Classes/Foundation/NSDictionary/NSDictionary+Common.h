//
//  NSDictionaryCommon.h
//  AppScaffold Cocoa Category
//
//  Created by Square on 03/02/16.
//  Copyright (c) 2016-2017 AppScaffold
//
//

#import <Foundation/Foundation.h>


@interface NSDictionary (ASCommon)

/*
 * Checks to see if the dictionary contains the given key
 */
- (BOOL)as_containsObjectForKey:(id)key;

@end
