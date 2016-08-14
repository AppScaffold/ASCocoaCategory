//
//  UIView+ASBlurredImage.h
//

#import <UIKit/UIKit.h>

@interface UIView (ASBlurredImage)
-(UIImage *)as_blurredImage;
-(UIImage *)as_blurredImageWithDarkEffect;
-(UIImage *)as_blurredImageWithLightEffect;
-(UIImage *)as_blurredImageWithExtraLightEffect;
-(UIImage *)as_blurredImageWithTint:(UIColor*)color;
@end
