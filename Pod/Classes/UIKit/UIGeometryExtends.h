#import <UIKit/UIKitDefines.h>
#import <UIKit/UIGeometry.h>

UIKIT_STATIC_INLINE CGRect UIEdgeInsetsExtendRect(CGRect rect, UIEdgeInsets insets) {
    rect.origin.x    -= insets.left;
    rect.origin.y    -= insets.top;
    rect.size.width  += (insets.left + insets.right);
    rect.size.height += (insets.top  + insets.bottom);
    return rect;
}

