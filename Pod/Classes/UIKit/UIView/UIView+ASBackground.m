//
//  UIView+ASBackground.m
//  AppScaffold Cocoa Category
//
//  Created by Square on 03/04/16.
//  Copyright (c) 2016-2017 AppScaffold
//

#import "UIView+ASBackground.h"

#pragma mark -

@interface ASBackgroundImageView : UIImageView
@end

@implementation ASBackgroundImageView
@end

#pragma mark -

@implementation UIView (ASBackground)

- (UIImageView *)as_backgroundImageView {
    ASBackgroundImageView *result = nil;

    for (UIView *subView in self.subviews) {
        if ([subView isKindOfClass:[ASBackgroundImageView class]]) {
            result = (ASBackgroundImageView *)subView;
            break;
        }
    }

    return result;
}

- (void)as_setBackgroundImage:(UIImage *)image {
    if (image) {
        UIImageView *imageView = [self as_backgroundImageView];
        if (nil == imageView) {
            imageView = [[ASBackgroundImageView alloc] initWithFrame:self.bounds];
            [imageView setAutoresizingMask:UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight];
            [self addSubview:imageView];
            [self sendSubviewToBack:imageView];
        }

        imageView.image = image;
        imageView.frame = self.bounds;
        [imageView setNeedsDisplay];
    } else {
        UIImageView *imageView = [self as_backgroundImageView];
        if (imageView) {
            [imageView removeFromSuperview];
        }
    }
}

@end
