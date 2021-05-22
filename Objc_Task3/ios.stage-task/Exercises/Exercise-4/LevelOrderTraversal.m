#import "LevelOrderTraversal.h"
#import "RSNode.h"

// Костыль :C
NSArray *LevelOrderTraversalForTree(NSArray *tree) {

    if ([tree count] == 0) {
        return @[];
    }
    
    NSMutableArray<RSNode *> *nodes = [[NSMutableArray alloc] init];
    
    int j;
    for (j = 0; j < [tree count]; j++) {
        RSNode *newNode = [[RSNode alloc] initWithValue:tree[j]];
        
        if ([nodes count] == 0 ) {
            if ([newNode.value isKindOfClass:NSNumber.class]) {
                [nodes addObject:newNode];
            }
        } else {
            int i;
            for (i = ((int)[nodes count] - 1); i > -1; i--) {
                if ([nodes[i].bottom isKindOfClass:NSNumber.class] != true &&
                    [nodes[i].bottom isKindOfClass:NSNull.class] != true ) {
                    nodes[i].bottom = newNode.value;

                    break;
                } else if ([nodes[i].top isKindOfClass:NSNumber.class] != true &&
                           [nodes[i].top isKindOfClass:NSNull.class] != true ) {
                    nodes[i].top = newNode.value;

                    break;
                }
            }
            if ([newNode.value isKindOfClass:NSNull.class] == false) {
                [nodes addObject:newNode];
            }
        }
    }
    if ([nodes count] == 0) {
        return @[];
    }
    NSMutableArray *results = [[NSMutableArray alloc] init];
    
    NSMutableDictionary<NSNumber *, NSMutableArray *> *dict = [[NSMutableDictionary alloc] init];
    dict[[NSNumber numberWithInteger:0]] = [NSMutableArray arrayWithObject:nodes[0]];
    NSNumber * index = [NSNumber numberWithInteger:0];

    do {
        int i;
        for (i = 0; i < [dict[index] count]; i++) {
            RSNode *node = dict[index][i];
            if (dict[[NSNumber numberWithInteger:(index.intValue + 1)]] == nil) {
                dict[[NSNumber numberWithInteger:(index.intValue + 1)]] = [[NSMutableArray alloc] init];
            }
        
            int k;
            for (k = 0; k < [nodes count]; k++) {
                if ([node.bottom isKindOfClass:NSNumber.class] == true) {
                    if (nodes[k].value == node.bottom) {
                        [dict[[NSNumber numberWithInteger:(index.intValue + 1)]] addObject:nodes[k]];
                    }
                }
                if ([node.top isKindOfClass:NSNumber.class] == true) {
                    if (nodes[k].value == node.top) {
                        [dict[[NSNumber numberWithInteger:(index.intValue + 1)]] addObject:nodes[k]];
                    }
                }
            }
            [nodes removeObject:node];
        }
        index = [NSNumber numberWithInteger:index.intValue + 1];
        
    } while ([nodes count] > 0);
    
    int i;
    for (i = 0; i < [dict count]; i++) {
        NSMutableArray *lvls = [[NSMutableArray alloc] init];
        for (RSNode *node in dict[[NSNumber numberWithInt:i]]) {
            if ([node.value isKindOfClass:NSNumber.class]) {
                [lvls addObject:node.value];
            }
        }
        if ([lvls count] > 0) {
            [results addObject:lvls];
        }
    }
    
    return results;
}
