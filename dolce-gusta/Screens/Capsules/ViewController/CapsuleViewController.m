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

@interface CapsuleViewController ()

@property (nonatomic, strong) CapsuleCollectionProvider *provider;
@property (weak, nonatomic) IBOutlet BaseCollectionView *collectionView;

@end

@implementation CapsuleViewController

- (void)initComponents {
    self.provider = [[CapsuleCollectionProvider alloc] initWithModelController:self collectionView:self.collectionView withClass:[CapsuleCell self]];
}

- (void)refreshAPI {
    [self.provider refresh:self.capsules];
}

#pragma mark - Action methods

- (IBAction)onTapAdd:(UIBarButtonItem *)sender {
    
    NewCapsuleViewController *controller = [NewCapsuleViewController fromStoryboard];
    
    controller.completion = ^(Capsule *capsule) {
        [self.provider add:capsule];
    };
    
    [self showViewController:controller sender:nil];
}

@end
