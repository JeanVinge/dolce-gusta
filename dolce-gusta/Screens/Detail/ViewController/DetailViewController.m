//
//  DetailViewController.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "DetailViewController.h"
#import "DetailCollectionProvider.h"
#import "BaseCollectionView.h"
#import "DetailCell.h"

@interface DetailViewController ()

@property (nonatomic, strong) DetailCollectionProvider *provider;
@property (weak, nonatomic) IBOutlet BaseCollectionView *collectionView;

@end

@implementation DetailViewController

- (void)initComponents {
    
    self.title = @"Chronometer";
    
    self.provider = [[DetailCollectionProvider alloc] initWithModelController:self collectionView:self.collectionView withClass:[DetailCell self]];
}

- (void)refreshAPIForceReload:(BOOL)forceReload {
    [self.provider refresh:self.capsules];
}

@end
