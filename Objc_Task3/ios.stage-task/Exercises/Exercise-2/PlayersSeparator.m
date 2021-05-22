#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    
    NSMutableArray *results = [[NSMutableArray alloc] init];
    NSMutableArray *stepArray = [[NSMutableArray alloc] init];
    NSInteger *count = [ratingArray count];
    
    int i;
    for (i = 0; i < count; i++) {
        int j;
        for (j = 0; j < count; j++) {
            int k;
            for (k = 0; k < count; k++) {
                if (i < j && j < k) {
                    if ((ratingArray[i].intValue < ratingArray[j].intValue) && (ratingArray[j].intValue < ratingArray[k].intValue) || (ratingArray[i].intValue > ratingArray[j].intValue) && (ratingArray[j].intValue > ratingArray[k].intValue)) {
                        
                        [stepArray addObject:ratingArray[i]];
                        [stepArray addObject:ratingArray[j]];
                        [stepArray addObject:ratingArray[k]];
                        
                        [results addObject:stepArray];
                        [stepArray removeAllObjects];
                    }
                }
            }
        }
    }
    
    return [results count];
}

@end
