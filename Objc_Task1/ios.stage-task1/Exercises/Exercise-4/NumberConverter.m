#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    NSMutableArray * array = [NSMutableArray new];
    int inte = [number intValue];
    if (inte < 0) {
        inte = inte * (-1);
    }
    NSNumber * newNumber = [NSNumber numberWithInt:inte];
    NSString *string = [newNumber stringValue];
    NSString * temp = [NSString new];
    NSInteger i = string.length - 1;
    if (i >= 0) {
        for (int j = 0; j <= i; j++) {
            char s = [string characterAtIndex:j];
            temp = [NSString stringWithFormat:@"%c",s];
            [array insertObject:temp atIndex:0];
        }
    }else{
        return [NSArray new];
    }
    NSArray * ar = [NSArray arrayWithArray:array];
    return ar;
}

@end
