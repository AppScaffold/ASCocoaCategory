//
//  NSURL+ASQueryDictionary.m
//  NSURL+Query
//
//  Created by Jon Crooke on 10/12/2013.
//  Copyright (c) 2013 Jonathan Crooke. All rights reserved.
//

#import "NSURL+ASQueryDictionary.h"
#import "NSString+ASQueryDictionary.h"
#import "NSDictionary+ASQueryDictionary.h"

static NSString *const as_URLReservedChars  = @"￼=,!$&'()*+;@?\r\n\"<>#\t :/";
static NSString *const kQuerySeparator      = @"&";
static NSString *const kQueryDivider        = @"=";
static NSString *const kQueryBegin          = @"?";
static NSString *const kFragmentBegin       = @"#";

@implementation NSURL (ASURLQuery)

- (NSDictionary*)as_queryDictionary {
  return self.query.as_URLQueryDictionary;
}

- (NSURL*)as_URLByAppendingQueryDictionary:(NSDictionary*)queryDictionary {
  return [self as_URLByAppendingQueryDictionary:queryDictionary withSortedKeys:NO];
}

- (NSURL *)as_URLByAppendingQueryDictionary:(NSDictionary *)queryDictionary
                             withSortedKeys:(BOOL)sortedKeys
{
  NSMutableArray *queries = [self.query length] > 0 ? @[self.query].mutableCopy : @[].mutableCopy;
  NSString *dictionaryQuery = [queryDictionary as_URLQueryStringWithSortedKeys:sortedKeys];
  if (dictionaryQuery) {
    [queries addObject:dictionaryQuery];
  }
  NSString *newQuery = [queries componentsJoinedByString:kQuerySeparator];

  if (newQuery.length) {
    NSArray *queryComponents = [self.absoluteString componentsSeparatedByString:kQueryBegin];
    if (queryComponents.count) {
      return [NSURL URLWithString:
              [NSString stringWithFormat:@"%@%@%@%@%@",
               queryComponents[0],                      // existing url
               kQueryBegin,
               newQuery,
               self.fragment.length ? kFragmentBegin : @"",
               self.fragment.length ? self.fragment : @""]];
    }
  }
  return self;
}

- (NSURL*)as_URLByRemovingQuery {
  NSArray *queryComponents = [self.absoluteString componentsSeparatedByString:kQueryBegin];
  if (queryComponents.count) {
    return [NSURL URLWithString:queryComponents.firstObject];
  }
  return self;
}

- (NSURL *)as_URLByReplacingQueryWithDictionary:(NSDictionary *)queryDictionary {
  return [self as_URLByReplacingQueryWithDictionary:queryDictionary withSortedKeys:NO];
}

- (NSURL*)as_URLByReplacingQueryWithDictionary:(NSDictionary*)queryDictionary
                                withSortedKeys:(BOOL) sortedKeys
{
  NSURL *stripped = [self as_URLByRemovingQuery];
  return [stripped as_URLByAppendingQueryDictionary:queryDictionary withSortedKeys:sortedKeys];
}

@end
