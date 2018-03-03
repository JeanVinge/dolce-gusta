//
//  NetworkManager+Coffee.h
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "NetworkManager.h"

@interface NetworkManager (Coffee)

+ (void)fetchListWithSuccess:(CoffeeListCompletion)success failure:(FailureCompletion)failure;
@end
