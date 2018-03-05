//
//  TYHTTPRequestOperationManager.h
//  CoreDataAndMantle
//
//  Created by Demon_Yao on 8/30/15.
//  Copyright (c) 2015 Tyrone Zhang. All rights reserved.
//

#import <AFHTTPSessionManager.h>
#import "GlobalTypeDef.h"

typedef NS_ENUM(NSInteger, HTTPRequestType) {
    kGetHTTPRequestType,
    kPostHTTPRequestType,
};

@interface NetworkManager : AFHTTPSessionManager

+ (void)requestHTTPType:(HTTPRequestType)httpType URLPath:(NSString *)path parameters:(NSDictionary *)parameters success:(GenericTwoCompletion)success failure:(FailureCompletion)failure;

+ (void)handleResponse:(NSURLSessionDataTask *)task response:(id)response completion:(GenericCompletion)completion;

@end
