//
//  CGAffineTransform+UIInterfaceOrientation.m
//  AppScaffold Cocoa Category
//
//  Created by Whirlwind on 15/1/26.
//  Copyright (c) 2015年 AppScaffold. All rights reserved.
//

#import "CGAffineTransform+UIInterfaceOrientation.h"
#import "Math+ASMacro.h"

CGFloat degreesForCGAffineTransform(CGAffineTransform t) {
#if defined(__LP64__) && __LP64__
    return atan2(t.b, t.a) * (180/M_PI);
#else
    return atan2f(t.b, t.a) * (180/M_PI);
#endif
}

CGFloat degreesForUIInterfaceOrientation(UIInterfaceOrientation orientation) {
    switch (orientation) {
        case UIInterfaceOrientationLandscapeLeft:
            return 90;

        case UIInterfaceOrientationLandscapeRight:
            return -90;

        case UIInterfaceOrientationPortraitUpsideDown:
            return 180;

        case UIInterfaceOrientationPortrait:
        default:
            return 0;
    }
}

UIInterfaceOrientation UIInterfaceOrientationForDegrees(CGFloat degrees) {
    if ((degrees < 1 && degrees > -1) || (degrees < 361 && degrees > 359)) { // 0 or 360
        return UIInterfaceOrientationPortrait;
    }
    if (degrees > 89 && degrees < 91) { // 90
        return UIInterfaceOrientationLandscapeLeft;
    }
    if (degrees > -91 && degrees < -89) { // -90
        return UIInterfaceOrientationLandscapeRight;
    }
    if (ABS(degrees) < 181 && ABS(degrees) > 179) { // +180 or -180
        return UIInterfaceOrientationPortraitUpsideDown;
    }
    return UIInterfaceOrientationUnknown;
}

CGAffineTransform CGAffineTransformForUIInterfaceOrientation(UIInterfaceOrientation orientation){
    return CGAffineTransformMakeRotation(DEGREES_TO_RADIANS(degreesForUIInterfaceOrientation(orientation)));
}

UIInterfaceOrientation UIInterfaceOrientationForCGAffineTransform(CGAffineTransform transform) {
    CGFloat degrees = degreesForCGAffineTransform(transform);
    return UIInterfaceOrientationForDegrees(degrees);
}

UIInterfaceOrientation UIInterfaceOrientationMakeTransform(UIInterfaceOrientation orientation, CGAffineTransform transform) {
    CGFloat degrees = degreesForUIInterfaceOrientation(orientation) + degreesForCGAffineTransform(transform);
    return UIInterfaceOrientationForDegrees(degrees);
}

