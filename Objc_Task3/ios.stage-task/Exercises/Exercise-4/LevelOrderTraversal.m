#import "LevelOrderTraversal.h"
#import "RSNode.h"
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
//    NSMutableDictionary<NSNumber *, NSMutableArray *> *dict = [[NSMutableDictionary<NSNumber *, NSMutableArray *> alloc] init];
//    NSMutableArray *filteredTree = [[NSMutableArray alloc] init];
//    NSMutableArray *resultTree = [[NSMutableArray alloc] init];
//
//    RSNode *node = [[RSNode alloc] initWithValue:tree[0]];
    
//    NSArray *testTree = @[@4,@2,@1,[NSNull null],[NSNull null],@3,[NSNull null],[NSNull null],@7,@5,[NSNull null],@6,[NSNull null],[NSNull null],@8];
//    
//    NSMutableArray<RSNode *> *nodes = [[NSMutableArray alloc] init];
//    
//    int j;
//    for (j = 0; j < [testTree count]; j++) {
//        RSNode *newNode = [[RSNode alloc] initWithValue:testTree[j]];
//        
////        if (j + 1 < [testTree count]) {
////            if ( [testTree[j] isKindOfClass:NSNumber.class] == true ) {
////                newNode.bottom = testTree[j + 1];
////            } else {
////                newNode.bottom = nil;
////            }
////        } else {
////            newNode.bottom = nil;
////        }
////        
////        if (j + 2 < [testTree count]) {
////            if ( [testTree[j] isKindOfClass:NSNumber.class] == true ) {
////                newNode.bottom = testTree[j + 2];
////            } else {
////                newNode.bottom = nil;
////            }
////        } else {
////            newNode.bottom = nil;
////        }
//        BOOL *needToAdd = true;
//        if ([nodes count] == 0 ) {
//            [nodes addObject:newNode];
//        } else {
//            int i;
//            for (i = ((int)[nodes count] - 1); i > -1; i--) {
//                if ([nodes[i].bottom isKindOfClass:NSNumber.class] != true &&
//                    [nodes[i].bottom isKindOfClass:NSNull.class] != true ) {
//                    nodes[i].bottom = newNode.value;
//                    needToAdd = false;
//                    break;
//                } else if ([nodes[i].top isKindOfClass:NSNumber.class] != true &&
//                           [nodes[i].top isKindOfClass:NSNull.class] != true ) {
//                    nodes[i].top = newNode.value;
//                    needToAdd = false;
//                    break;
//                }
//            }
//            if (needToAdd) {
//                [nodes addObject:newNode];
//            }
//        }
//    }
//    NSLog(nodes);
//    NSLog(nodes);
    
//    [resultTree addObject:tree[0]];
//    NSInteger *step = 0;
//    int k;
//    for (k = 0; k < [tree count]; k++) {
//        if (k % 2 == 0) {
//
//        } else {
//
//        }
//        if ( [tree[k] isKindOfClass:NSNumber.class] == true ) {
//            if ([[resultTree lastObject] isKindOfClass:NSNumber.class]) {
//                [resultTree addObject:[NSMutableArray arrayWithObjects:tree[k], nil]];
//            } else {
//                NSMutableArray *array = [NSMutableArray arrayWithArray:[resultTree lastObject]];
//
//            }
//            [resultTree addObject:tree[k]];
//        }
//    }
//
//    NSInteger *lvl = -1;
//    NSInteger *extraNum = 0;
//    BOOL *boxWasClosed = false;
//    int i;
//    for (i = 0; i < [tree count]; i++) {
//        if (tree[i + 1] == nil) {
//            continue;
//        }
//        if (tree[i + 1] == nil && tree[i + 2] == nil ) {
//            lvl = lvl - 1;
//            if (boxWasClosed) {
//                extraNum = 1;
//            }
//            boxWasClosed = true;
//        } else {
//            boxWasClosed = false;
//        }
//        lvl = lvl - extraNum;
//        lvl = lvl + 1;
//        NSNumber *key = [NSNumber numberWithInteger:*lvl];
//        NSMutableArray *newAr = [NSMutableArray arrayWithArray:dict[key]];
//        [newAr addObject:filteredTree[(long)lvl]];
//        dict[key] = newAr;
//
//    }
    
    return nil;
}
