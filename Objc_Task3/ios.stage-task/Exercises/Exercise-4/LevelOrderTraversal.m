#import "LevelOrderTraversal.h"
//```
//   ┌── 8
//┌──7
//│  │  ┌── 6
//│  └──5
//│     └── nil
//4
//│  ┌── 3
//└──2
//   └── 1
NSArray *LevelOrderTraversalForTree(NSArray *tree) {
    NSMutableDictionary<NSNumber *, NSMutableArray *> *dict = [[NSMutableDictionary<NSNumber *, NSMutableArray *> alloc] init];
    NSMutableArray *filteredTree = [[NSMutableArray alloc] init];
    NSMutableArray *resultTree = [[NSMutableArray alloc] init];
    
    
    int j;
    for (j = 0; j < [tree count]; j++) {
        if (tree[j] != nil) {
            [filteredTree addObject:tree[j]];
        }
    }
    [resultTree addObject:tree[0]];
    NSInteger *step = 0;
    int k;
    for (k = 0; k < [tree count]; k++) {
        if (k % 2 == 0) {
             
        } else {
            
        }
        if ( [tree[k] isKindOfClass:NSNumber.class] == true ) {
            if ([[resultTree lastObject] isKindOfClass:NSNumber.class]) {
                [resultTree addObject:[NSMutableArray arrayWithObjects:tree[k], nil]];
            } else {
                NSMutableArray *array = [NSMutableArray arrayWithArray:[resultTree lastObject]];
                
            }
            [resultTree addObject:tree[k]];
        }
    }
    
    NSInteger *lvl = -1;
    NSInteger *extraNum = 0;
    BOOL *boxWasClosed = false;
    int i;
    for (i = 0; i < [tree count]; i++) {
        if (tree[i + 1] == nil) {
            continue;
        }
        if (tree[i + 1] == nil && tree[i + 2] == nil ) {
            lvl = lvl - 1;
            if (boxWasClosed) {
                extraNum = 1;
            }
            boxWasClosed = true;
        } else {
            boxWasClosed = false;
        }
        lvl = lvl - extraNum;
        lvl = lvl + 1;
        NSNumber *key = [NSNumber numberWithInteger:*lvl];
        NSMutableArray *newAr = [NSMutableArray arrayWithArray:dict[key]];
        [newAr addObject:filteredTree[(long)lvl]];
        dict[key] = newAr;
        
    }
    
    return nil;
}
