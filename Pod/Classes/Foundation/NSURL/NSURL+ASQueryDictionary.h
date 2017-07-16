//
//  NSURL+ASQueryDictionary.h
//  NSURL+Query
//
//  Created by Jon Crooke on 10/12/2013.
//  Copyright (c) 2013 Jonathan Crooke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURL (UQ_URLQuery)

/**
 *  @return URL's query component as keys/values
 *  Returns nil for an empty query
 */
@property (nonatomic, readonly) NSDictionary *as_queryDictionary;

/**
 *  @return URL with keys values appending to query string
 *  @param queryDictionary Query keys/values
 *  @param sortedKeys Sorted the keys alphabetically?
 *  @warning If keys overlap in receiver and query dictionary,
 *  behaviour is undefined.
 */
- (NSURL*)as_URLByAppendingQueryDictionary:(NSDictionary*)queryDictionary
                            withSortedKeys:(BOOL) sortedKeys;

/** As above, but `sortedKeys=NO` */
- (NSURL*)as_URLByAppendingQueryDictionary:(NSDictionary*)queryDictionary;

/**
 *  @return Copy of URL with its query component replaced with
 *  the specified dictionary.
 *  @param queryDictionary A new query dictionary
 *  @param sortedKeys      Whether or not to sort the query keys
 */
- (NSURL*)as_URLByReplacingQueryWithDictionary:(NSDictionary*)queryDictionary
                                withSortedKeys:(BOOL) sortedKeys;

/** As above, but `sortedKeys=NO` */
- (NSURL*)as_URLByReplacingQueryWithDictionary:(NSDictionary*)queryDictionary;

/** @return Receiver with query component completely removed */
- (NSURL*)as_URLByRemovingQuery;

@end

