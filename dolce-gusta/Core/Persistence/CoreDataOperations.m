//
//  CoreDataOperations.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "CoreDataOperations.h"
#import <MTLModel.h>
#import "CoreDataManager.h"
#import <CoreData/CoreData.h>

@implementation CoreDataOperations

#pragma mark - Public Methods

+ (instancetype)shareInstance {
    
    static CoreDataOperations *instance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    
    return instance;
}

+ (void)saveModels:(NSArray *)models {
    for (MTLModel<MTLManagedObjectSerializing> *model in models) {
        [[CoreDataOperations shareInstance] createEntityInContext:[CoreDataManager shareInstance].managedObjectContext data:model];
    }
    
    [[CoreDataManager shareInstance] saveContext];
}

+ (void)saveModel:(MTLModel<MTLManagedObjectSerializing> *)model {
    [[CoreDataOperations shareInstance] createEntityInContext:[CoreDataManager shareInstance].managedObjectContext data:model];
    [[CoreDataManager shareInstance] saveContext];
}

+ (void)deleteAllByModel:(MTLModel<MTLManagedObjectSerializing> *)model {
    NSManagedObjectContext *context = [CoreDataManager shareInstance].managedObjectContext;
    NSError *error = nil;
    NSArray *array = [context executeFetchRequest:[[CoreDataOperations shareInstance] fetchRequest:model] error:&error];
    NSAssert(!error, @"when deleteAllByModel get errror!");
    
    for (id object in array) {
        [context deleteObject:object];
    }
    [context save:nil];
}

+ (void)deleteModels:(NSArray *)models {
    
    if (models.count == 0) return;
    
    NSManagedObjectContext *context = [CoreDataManager shareInstance].managedObjectContext;
    NSError *error = nil;
    NSArray *allManagedObjects = [context executeFetchRequest:[[CoreDataOperations shareInstance] fetchRequest:[models firstObject]] error:&error];
    NSAssert(!error, @"when deleteModels get errror!");
    
    for (id deleteObject in models) {
        BOOL isDelete = NO;
         for (NSManagedObject *object in allManagedObjects) {
             MTLModel *model = [MTLManagedObjectAdapter modelOfClass:[deleteObject class] fromManagedObject:object error:nil];
             if ([model isEqual:deleteObject]) {
                 [context deleteObject:object];
                 isDelete = YES;
             }
         }
         NSAssert(isDelete == YES, @"%@ delete failed",deleteObject);
    }
    
    [context save:nil];
}

+ (__kindof MTLModel<MTLManagedObjectSerializing> *)queryFirstByModel:(MTLModel<MTLManagedObjectSerializing> *)model {
    
    NSError *error = nil;
    
    NSManagedObject *managedObject = [[[CoreDataManager shareInstance].managedObjectContext executeFetchRequest:[[CoreDataOperations shareInstance] fetchRequest:model] error:&error] firstObject];
    
    MTLModel<MTLManagedObjectSerializing> *object = [MTLManagedObjectAdapter modelOfClass:[model class] fromManagedObject:managedObject error:&error];
    
    NSAssert(error == nil, @"error-->%@",error);
    
    return object;
}

#pragma mark - Private Methods

- (NSManagedObject *)createEntityInContext:(NSManagedObjectContext *)context data:(MTLModel<MTLManagedObjectSerializing> *)data {
    NSError *error = nil;
    
    NSManagedObject *object = [MTLManagedObjectAdapter managedObjectFromModel:data insertingIntoContext:context error:&error];
    
    return object;
}

- (NSFetchRequest *)fetchRequest:(MTLModel<MTLManagedObjectSerializing> *)model {
    return [NSFetchRequest fetchRequestWithEntityName:[[model class] managedObjectEntityName]];
}

@end
