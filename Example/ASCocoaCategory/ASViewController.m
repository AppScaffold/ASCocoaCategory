//
//  ASViewController.m
//  ASCocoaCategory
//
//  Created by 利伽 on 03/02/2016.
//  Copyright (c) 2016 利伽. All rights reserved.
//

#import "ASViewController.h"
#import "UIView+ASBackground.h"

@interface ASViewController ()

@end

@implementation ASViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view setASBackgroundImage:[UIImage imageNamed:@"icon_github"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
