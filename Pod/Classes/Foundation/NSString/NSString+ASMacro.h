

// String blank
#define NSStringIsBlank(string) (![string isKindOfClass:[NSString class]] || [[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] isEqualToString:@""])
#define NSStringIsPresent(string) !NSStringIsBlank(string)

// encoding
#define NSGBKStringEncoding     CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000)
