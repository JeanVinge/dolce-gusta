//
//  NetworkManager+Coffee.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "NetworkManager+Coffee.h"
#import "CoreDataOperations.h"

#define kPathList (@"list")

@implementation NetworkManager (Coffee)

+ (void)fetchListForceReload:(BOOL)forceReload success:(CoffeeListCompletion)success failure:(FailureCompletion)failure {
    
    NSLog(@"%@", [CoreDataOperations queryFirstByModel:[CoffeeList self]]);
    
    CoffeeList * list = (CoffeeList *) [CoreDataOperations queryFirstByModel:[CoffeeList self]];
    
    if (list.coffees.count == 0 || forceReload == true) {
        
        [CoreDataOperations deleteAllByModel:[CoffeeList self]];
        
        [self requestHTTPType:kGetHTTPRequestType URLPath:kPathList parameters:nil success:^(id task, id responseObject) {
            [NetworkManager handleResponse:task response:responseObject completion:^(id object) {
                
                NSError *error;
                CoffeeList *list = [CoffeeList parse:responseObject error:&error];
                [CoreDataOperations saveModel:list];
                
                if (error == nil) {
                    success(list);
                } else {
                    failure(task, error);
                }
            }];
            
        } failure:^(id operation, NSError *error) {
            failure(operation, error);
        }];
    } else {
        success(list);
    }
}

@end
