#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    //NSArray *rankedArray = @[@(100), @(80), @(80), @(50), @(20)];
    //NSArray *playerArray = @[@(5), @(10), @(20), @(80)];
    //NSArray *expectedResults = @[@(5), @(5), @(4), @(2)];
    
    NSMutableArray *result = [[NSMutableArray alloc] initWithCapacity:playerArray.count];
    rankedArray = [rankedArray valueForKeyPath:[NSString stringWithFormat:@"distinctUnionOfObjects.%@", @"self"]];
    
    NSSortDescriptor * sort = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:NO];
    rankedArray = [rankedArray sortedArrayUsingDescriptors:[NSArray arrayWithObject:sort]];
    
    int playerCount = (int)[playerArray count];
    int rankCount = (int)[rankedArray count];
    
    for (int i = 0; i < playerCount; i++) {
        [result insertObject:[NSNumber numberWithInteger:rankedArray.count + 1] atIndex:i];
        int a = [playerArray[i] intValue];
        for (int j = 0; j < rankCount; j++) {
            int b = [[rankedArray objectAtIndex:j] intValue];
            if (a >= b) {
                [result replaceObjectAtIndex:i withObject:@(j+1)];
                break;
            }
        }
    }
    return [result copy];
}

@end
