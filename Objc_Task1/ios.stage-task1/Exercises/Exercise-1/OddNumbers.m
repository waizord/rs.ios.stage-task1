//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    NSMutableArray * numbers = [NSMutableArray new];
    
    int i = 0;
    for (; i != [array count]; i++) {
        NSNumber * odd = array[i];
        NSInteger check = [odd intValue];
        if (check % 2 == 0) {
            NSLog(@"%lu", check);
        } else {
            [numbers addObject:odd];
        }
    }
    return [numbers count];
}

@end
