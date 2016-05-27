
#define UIMainScreenWidth (UIWindowIsLandscape ? [UIScreen mainScreen].bounds.size.height : [UIScreen mainScreen].bounds.size.width)

#define UIMainScreenHeight (UIWindowIsLandscape ? [UIScreen mainScreen].bounds.size.width : [UIScreen mainScreen].bounds.size.height)

#define UIMainScreenSize CGSizeMake(UIScreenCurrentWidth, UIScreenCurrentHeight)
