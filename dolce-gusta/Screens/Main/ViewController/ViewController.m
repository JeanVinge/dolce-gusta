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
#import "MainCollectionProvider.h"
#import "BaseCollectionView.h"
#import "CoffeeCell.h"
#import "NewCoffeeViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet BaseCollectionView *collectionView;
@property (nonatomic,strong) MainCollectionProvider *provider;

@end

@implementation ViewController

- (void)initComponents {
    self.provider = [[MainCollectionProvider alloc] initWithModelController:self collectionView:self.collectionView withClass:[CoffeeCell self]];
}
    
- (void)refreshAPI {
    
    @weakify(self);
    [NetworkManager fetchListWithSuccess:^(CoffeeList *list) {
        @strongify(self);
        
        [self.provider refresh:list.coffees];
    } failure:^(id task, NSError *error) {
        
    }];
}

#pragma mark - Action Methods

- (IBAction)onTapAdd:(UIBarButtonItem *)sender {
    
    NewCoffeeViewController *controller = [NewCoffeeViewController fromStoryboard];
    
    @weakify(self);
    controller.completion = ^(Coffee *coffee) {
        @strongify(self);
        
        [self.provider add:coffee];
    };
    
    [self showViewController:controller sender:nil];
}

#pragma mark - save data
    
- (void)save:(CoffeeList *)list {
    [CoreDataOperations saveModel:list];
}
    
#pragma mark - fetch data
    
#pragma mark - delete data
    
@end
