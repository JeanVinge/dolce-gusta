//
//  CoreDataOperations.h
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MTLManagedObjectAdapter.h>

@class MTLManagedObjectAdapter;
@class MTLModel;

@interface CoreDataOperations : NSObject

+ (void)saveModels:(NSArray *)models;
+ (void)saveModel:(MTLModel<MTLManagedObjectSerializing> *)model;
+ (void)deleteAllByModel:(MTLModel<MTLManagedObjectSerializing> *)model;
+ (void)deleteModels:(NSArray *)models;

+ (__kindof MTLModel<MTLManagedObjectSerializing> *)queryFirstByModel:(MTLModel<MTLManagedObjectSerializing> *)model;

@end
