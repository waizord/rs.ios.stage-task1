#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    
    if (playerArray.count == 0) {
        return @[];
    } else {
        if ((rankedArray.count == 0)) {
            NSMutableArray * result = [NSMutableArray new];
            for (int i = 0; i < (int)playerArray.count; i++) {
                [result addObject:@(1)];
            }
            return result;
        } else {
            if (rankedArray.count > playerArray.count) {
                NSMutableArray * result = [NSMutableArray new];
                for (int i = 0; i < rankedArray.count; i++) {
                    NSNumber * num = [NSNumber numberWithInt:i];
                    if (playerArray[i] >= rankedArray[i]) {
                        [result addObject:num];
                    } else {
                        [result addObject:num];
                    }
                }
            }else{
                
            }
        }
    }
    return @[];
}

@end
