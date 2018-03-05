//
//  ViewController.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "ViewController.h"
#import "NetworkManager+Coffee.h"
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
    
    self.title = @"Coffee List";
    
    self.provider = [[MainCollectionProvider alloc] initWithModelController:self collectionView:self.collectionView withClass:[CoffeeCell self]];
}

- (void)refreshAPIForceReload:(BOOL)forceReload {
    
    @weakify(self);
    [NetworkManager fetchListForceReload:forceReload success:^(CoffeeList *list) {
        @strongify(self);
        
        if ([list.coffees isKindOfClass:[NSSet class]]) {
            list.coffees = [((NSSet *) list.coffees) allObjects];
        }
    
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
@end
