//
//  NetworkManager+Coffee.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "NetworkManager+Coffee.h"

#define URL_PATH_LIST (@"list")

@implementation NetworkManager (Coffee)

    + (void)fetchCategoryWithCompletionHandler:(void (^)(CoffeeList *))completionBlock failure:(void (^)(id, NSError *))failedBlock
    {
        [self requestHTTPType:kGetHTTPRequestType URLPath:URL_PATH_LIST parameters:nil success:^(id task, id responseObject) {
            [self handleResponse:task response:responseObject completionHandler:^(id object) {
                NSError *error;
                CoffeeList *list = [CoffeeList parse:responseObject error:&error];
                
                completionBlock(list);
            }];
            
        } failure:^(id operation, NSError *error) {
            failedBlock(operation, error);
        }];
    }
    
+ (void)handleResponse:(NSURLSessionDataTask *)task response:(id)responseObject completionHandler:(void (^)(id object))completionBlock
    {
        if (completionBlock) {
            if ([responseObject isKindOfClass:[NSDictionary class]]) {
                NSDictionary *responseDict = (NSDictionary *)responseObject;
                completionBlock(responseDict);
            }
        }
    }

@end
