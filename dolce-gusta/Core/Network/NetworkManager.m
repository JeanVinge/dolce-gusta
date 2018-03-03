//
//  TYHTTPRequestOperationManager.m
//  CoreDataAndMantle
//
//  Created by Demon_Yao on 8/30/15.
//  Copyright (c) 2015 Tyrone Zhang. All rights reserved.
//

#import "NetworkManager.h"

NSString * const kBaseURLString = @"http://private-5a78d1-dolcegusta.apiary-mock.com";


@implementation NetworkManager

- (instancetype)init
{
    return [super initWithBaseURL:[NSURL URLWithString:kBaseURLString]];;
}

+ (void)requestHTTPType:(HTTPRequestType)httpType URLPath:(NSString *)path parameters:(NSDictionary *)parameters success:(GenericTwoCompletion)success failure:(FailureCompletion)failure {
    
    if (httpType == kGetHTTPRequestType) {
        [[[NetworkManager alloc] init] GET:path parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            success(task, responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            failure(task, error);
        }];
        
    } else if (httpType == kPostHTTPRequestType) {
        [[[NetworkManager alloc] init] POST:path parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            success(task, responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            failure(task, error);
        }];
    }
}

+ (void)handleResponse:(NSURLSessionDataTask *)task response:(id)responseObject completionHandler:(GenericCompletion)completion {
    if (completion) {
        if ([responseObject isKindOfClass:[NSDictionary class]]) {
            NSDictionary *responseDict = (NSDictionary *)responseObject;
            completion(responseDict);
        } else if ([responseObject isKindOfClass:[NSArray class]]) {
            NSArray *responseDict = (NSArray *)responseObject;
            completion(responseDict);
        }
    }
}

@end
