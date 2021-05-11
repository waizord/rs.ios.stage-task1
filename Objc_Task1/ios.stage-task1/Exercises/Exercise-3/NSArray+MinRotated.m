#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    if (self.count == 0) {
        return  nil;
    }
    if (self.count == 1) {
        return self[0];
    }
    if (self.count == 2) {
        return [self[0] intValue] < [self[1] intValue] ? self[0] : self[1];
    }
    
    int left = 0;
    int right = (int)self.count - 1;
    
    while (left < right) {
        int mid = (left + right) / 2;
        //if ([self[mid] compare:self[right]] == NSOrderedDescending){
        if ([self[mid] intValue] < [self[right]intValue]){
            right = mid;
        }else{
            return  self[right];
        }
    }
    return self[left];
}

@end
