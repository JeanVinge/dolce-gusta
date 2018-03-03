//
//  NetworkManager+Coffee.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "NetworkManager+Coffee.h"

#define kPathList (@"list")

@implementation NetworkManager (Coffee)

+ (void)fetchListWithSuccess:(CoffeeListCompletion)success failure:(FailureCompletion)failure {
        [self requestHTTPType:kGetHTTPRequestType URLPath:kPathList parameters:nil success:^(id task, id responseObject) {
            [NetworkManager handleResponse:task response:responseObject completionHandler:^(id object) {
                
                NSError *error;
                CoffeeList *list = [CoffeeList parse:responseObject error:&error];
                
                if (error == nil) {
                    success(list);
                } else {
                    failure(task, error);
                }
            }];
            
        } failure:^(id operation, NSError *error) {
            failure(operation, error);
        }];
    }

@end
