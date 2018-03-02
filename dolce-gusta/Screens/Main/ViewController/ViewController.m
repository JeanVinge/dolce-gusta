//
//  ViewController.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "ViewController.h"
#import "NetworkManager+Coffee.h"
#import "CoreDataOperations.h"

@interface ViewController ()

@end

@implementation ViewController
    
- (void)refreshAPI {
    
    @weakify(self);
    [NetworkManager fetchCategoryWithCompletionHandler:^(CoffeeList *list) {
        @strongify(self);
        
        [self save:list];
    } failure:^(id task, NSError *error) {
        
    }];
}

#pragma mark - save data
    
- (void)save:(CoffeeList *)list {
    [CoreDataOperations saveModel:list];
}
    
#pragma mark - fetch data
    
#pragma mark - delete data
    
@end
