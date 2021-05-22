//
//  Node.h
//  ios.stage-task
//
//  Created by Vladislav Meleshko on 22.05.2021.
//

#import <Foundation/Foundation.h>

@interface RSNode : NSObject

@property (nonatomic, nullable,copy) NSNumber *value;
@property (nonatomic, nullable, copy) NSObject *top;
@property (nonatomic, nullable, copy) NSObject *bottom;


- (instancetype _Nullable )initWithValue:(NSNumber *_Nullable)value;

@end
