//
//  NSIndexPath+ASRange.m
//
//
//  Created by Whirlwind on 15/7/7.
//
//

#import "NSIndexPath+ASRange.h"
@import UIKit;

@implementation NSIndexPath (ASRange)

+ (NSArray *)as_indexPathsForItemRange:(NSRange)range inSection:(NSInteger)section {
    NSMutableArray *indexPaths = [NSMutableArray arrayWithCapacity:range.length];
    for (NSInteger i = 0; i < range.length; i++) {
        NSIndexPath *indexPath = [NSIndexPath indexPathForItem:i+range.location inSection:section];
        [indexPaths addObject:indexPath];
    }
    return indexPaths;
}

+ (NSArray *)as_indexPathsForRowRange:(NSRange)range inSection:(NSInteger)section {
    NSMutableArray *indexPaths = [NSMutableArray arrayWithCapacity:range.length];
    for (NSInteger i = 0; i < range.length; i++) {
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:i+range.location inSection:section];
        [indexPaths addObject:indexPath];
    }
    return indexPaths;
}

@end
