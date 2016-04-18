//
//  ASUIViewTests.m
//  ASCocoaCategory
//
//  Created by square on 16/4/18.
//  Copyright © 2016年 利伽. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UIView+ASBackground.h"

@interface ASUIViewTests : XCTestCase

@end

@implementation ASUIViewTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testBackground {
    UIImage *image = [UIImage new];
    UIView *v;
    XCTAssertNoThrow([v setASBackgroundImage:image]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
