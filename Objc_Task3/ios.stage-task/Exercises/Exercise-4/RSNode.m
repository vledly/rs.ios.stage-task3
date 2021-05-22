//
//  Node.m
//  ios.stage-task
//
//  Created by Vladislav Meleshko on 22.05.2021.
//

#import "RSNode.h"

@implementation RSNode

- (instancetype)initWithValue:(NSNumber *)value {
    self = [super init];
    if (self) {
        _value = value;
    }
    return self;
}

@end
