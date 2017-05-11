//
//  UITableViewCell+ASTableView.m
//  Pods
//
//  Created by Whirlwind on 2017/5/11.
//
//

#import "UITableViewCell+ASTableView.h"

@implementation UITableViewCell (ASTableView)

- (UITableView *)as_tableView {
    UIView *view = self;
    while ((view = [view superview])) {
        if([view isKindOfClass:[UITableView class]]) {
            return (UITableView *)view;
        }
    }
    return nil;
}


@end
