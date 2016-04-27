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

#pragma mark -

@implementation ASBackgroundImageView
@end

@implementation UIView (ASBackground)

- (UIImageView *)as_backgroundImageView
{
    return [self __backgroundImageView];
}

- (ASBackgroundImageView *)__backgroundImageView
{
    ASBackgroundImageView * result = nil;
    
    for ( UIView * subView in self.subviews )
    {
        if ( [subView isKindOfClass:[ASBackgroundImageView class]] )
        {
            result = (ASBackgroundImageView *)subView;
            break;
        }
    }
    
    return result;
}

- (void)setASBackgroundImage:(UIImage *)image
{
    if ( image )
    {
        ASBackgroundImageView * imageView = [self __backgroundImageView];
        if ( nil == imageView )
        {
            imageView = [[ASBackgroundImageView alloc] initWithFrame:self.bounds];
            [self addSubview:imageView];
            [self sendSubviewToBack:imageView];
        }
        
        imageView.image = image;
        imageView.frame = self.bounds;
        [imageView setNeedsDisplay];
    }
    else
    {
        ASBackgroundImageView * imageView = [self __backgroundImageView];
        if ( imageView )
        {
            [imageView removeFromSuperview];
        }
    }
}

@end
