//
//  NSDictionary+ASQueryDictionary.m
//  NSURL+Query
//
//  Created by Jon Crooke on 10/12/2013.
//  Copyright (c) 2013 Jonathan Crooke. All rights reserved.
//

#import "NSDictionary+ASQueryDictionary.h"
#import "NSString+ASQueryDictionary.h"

static NSString *const as_URLReservedChars  = @"￼=,!$&'()*+;@?\r\n\"<>#\t :/";
static NSString *const kQuerySeparator      = @"&";
static NSString *const kQueryDivider        = @"=";
static NSString *const kQueryBegin          = @"?";
static NSString *const kFragmentBegin       = @"#";

@implementation NSDictionary (URLQuery)

- (NSString *)as_URLQueryString {
  return [self as_URLQueryStringWithSortedKeys:NO];
}

- (NSString*)as_URLQueryStringWithSortedKeys:(BOOL)sortedKeys {
  NSMutableString *queryString = @"".mutableCopy;
  NSArray *keys = sortedKeys ? [self.allKeys sortedArrayUsingSelector:@selector(compare:)] : self.allKeys;
  for (NSString *key in keys) {
    id rawValue = self[key];
    NSString *value = nil;
    // beware of empty or null
    if (!(rawValue == [NSNull null] || ![rawValue description].length)) {
      value = [self[key] description];
    }
    [queryString appendFormat:@"%@%@%@%@",
     queryString.length ? kQuerySeparator : @"",    // appending?
     key,
     value ? kQueryDivider : @"",
     value ? value : @""];
  }
    return queryString.length ? [queryString stringByAddingPercentEncodingWithAllowedCharacters:
                                 [NSCharacterSet URLQueryAllowedCharacterSet]] : nil;
}

@end
