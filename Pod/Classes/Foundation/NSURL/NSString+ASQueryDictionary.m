//
//  NSString+ASQueryDictionary.m
//  NSURL+Query
//
//  Created by Jon Crooke on 10/12/2013.
//  Copyright (c) 2013 Jonathan Crooke. All rights reserved.
//

#import "NSString+ASQueryDictionary.h"

static NSString *const as_URLReservedChars  = @"￼=,!$&'()*+;@?\r\n\"<>#\t :/";
static NSString *const kQuerySeparator      = @"&";
static NSString *const kQueryDivider        = @"=";
static NSString *const kQueryBegin          = @"?";
static NSString *const kFragmentBegin       = @"#";

@implementation NSString (ASURLQuery)

- (NSDictionary*)as_URLQueryDictionary {
  NSMutableDictionary *mute = @{}.mutableCopy;
  for (NSString *query in [self componentsSeparatedByString:kQuerySeparator]) {
    NSArray *components = [query componentsSeparatedByString:kQueryDivider];
    if (components.count == 0) {
      continue;
    }
    NSString *key = [components[0] stringByRemovingPercentEncoding];
    id value = nil;
    if (components.count == 1) {
      // key with no value
      value = [NSNull null];
    }
    if (components.count == 2) {
      value = [components[1] stringByRemovingPercentEncoding];
      // cover case where there is a separator, but no actual value
      value = [value length] ? value : [NSNull null];
    }
    if (components.count > 2) {
      // invalid - ignore this pair. is this best, though?
      continue;
    }
    mute[key] = value ?: [NSNull null];
  }
  return mute.count ? mute.copy : nil;
}

@end
