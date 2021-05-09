#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    NSCharacterSet * set = [[NSCharacterSet decimalDigitCharacterSet]invertedSet];
    NSRange range = [self rangeOfCharacterFromSet:set];
    return range.location == NSNotFound && self.length > 0;
}

@end
