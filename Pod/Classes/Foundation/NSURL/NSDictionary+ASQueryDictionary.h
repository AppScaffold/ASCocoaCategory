//
//  NSDictionary+ASQueryDictionary.h
//  NSURL+Query
//
//  Created by Jon Crooke on 10/12/2013.
//  Copyright (c) 2013 Jonathan Crooke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (UQ_URLQuery)

/**
 *  @return URL query string component created from the keys and values in
 *  the dictionary. Returns nil for an empty dictionary.
 *  @param sortedKeys Sorted the keys alphabetically?
 *  @see cavetas from the main `NSURL` category as well.
 */
- (NSString*)as_URLQueryStringWithSortedKeys:(BOOL) sortedKeys;

/** As above, but `sortedKeys=NO` */
- (NSString*)as_URLQueryString;

@end
