//
//  TYHTTPRequestOperationManager.h
//  CoreDataAndMantle
//
//  Created by Demon_Yao on 8/30/15.
//  Copyright (c) 2015 Tyrone Zhang. All rights reserved.
//

#import <AFHTTPSessionManager.h>

typedef NS_ENUM(NSInteger, HTTPRequestType) {
    kGetHTTPRequestType,
    kPostHTTPRequestType,
};

@interface NetworkManager : AFHTTPSessionManager

+ (void)requestHTTPType:(HTTPRequestType)httpType URLPath:(NSString *)path
             parameters:(NSDictionary *)parameters
                success:(void (^)(id, id))completionBlock
                failure:(void (^)(id, NSError *error))failed;
@end
