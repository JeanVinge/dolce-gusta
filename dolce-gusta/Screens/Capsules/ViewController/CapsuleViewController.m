//
//  CapsulesViewController.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "CapsuleViewController.h"
#import "CapsuleCollectionProvider.h"
#import "BaseCollectionView.h"
#import "CapsuleCell.h"
#import "NewCapsuleViewController.h"
#import "DetailViewController.h"

@interface CapsuleViewController ()

@property (nonatomic, strong) CapsuleCollectionProvider *provider;
@property (weak, nonatomic) IBOutlet BaseCollectionView *collectionView;

@end

@implementation CapsuleViewController

- (void)initComponents {
    
    self.title = @"Capsule List";
    
    self.provider = [[CapsuleCollectionProvider alloc] initWithModelController:self collectionView:self.collectionView withClass:[CapsuleCell self]];
}

- (void)refreshAPIForceReload:(BOOL)forceReload {
    [self.provider refresh:self.capsules];
}

#pragma mark - Action methods

- (IBAction)onTapAdd:(UIBarButtonItem *)sender {
    
    NewCapsuleViewController *controller = [NewCapsuleViewController fromStoryboard];
    
    controller.completion = ^(Capsule *capsule) {
        [self.provider add:capsule];
        self.completion(self.provider.list, self.index);
    };
    
    [self showViewController:controller sender:nil];
}

- (IBAction)onTapButton:(id)sender {
    
    DetailViewController *controller = [DetailViewController fromStoryboard];
    controller.capsules = self.provider.list;
    
    [self showViewController:controller sender:nil];
}

@end
