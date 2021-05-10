#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    NSArray * array = [NSArray new];
    array = [self sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"%@", [array firstObject]);
    return [array firstObject];
}

@end
