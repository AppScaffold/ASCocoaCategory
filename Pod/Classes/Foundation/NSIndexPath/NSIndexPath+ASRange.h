//
//  NSIndexPath+ASRange.h
//
//
//  Created by Whirlwind on 15/7/7.
//
//

#import <Foundation/Foundation.h>

@interface NSIndexPath (ASRange)

+ (NSArray *)as_indexPathsForItemRange:(NSRange)range inSection:(NSInteger)section NS_AVAILABLE_IOS(6_0);

@end
