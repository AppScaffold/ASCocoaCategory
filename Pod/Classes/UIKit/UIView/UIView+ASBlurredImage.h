//
//  UIView+ASBlurredImage.h
//

#import <UIKit/UIKit.h>

@interface UIView (ASBlurredImage)
-(UIImage *)as_blurredImage;
-(UIImage *)as_imageWithBlur;
-(UIImage *)as_imageWithDarkEffect;
-(UIImage *)as_imageWithLightEffect;
-(UIImage *)as_imageWithExtraLightEffect;
-(UIImage *)as_imageWithTint:(UIColor*)color;
@end
