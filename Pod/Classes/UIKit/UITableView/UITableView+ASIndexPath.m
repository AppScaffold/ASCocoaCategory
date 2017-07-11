//
//  UITableView+ASIndexPath.m
//  ASCocoaCategory
//
//  Created by Whirlwind on 2017/7/11.
//

#import "UITableView+ASIndexPath.h"

@implementation UITableView (ASIndexPath)

- (NSIndexPath *)as_indexPathForLastRow {
    return [NSIndexPath indexPathForRow:[self numberOfRowsInSection:self.numberOfSections - 1] - 1
                              inSection:self.numberOfSections - 1];
}

@end
