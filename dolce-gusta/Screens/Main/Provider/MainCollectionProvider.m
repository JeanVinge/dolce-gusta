//
//  MainCollectionProvider.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "MainCollectionProvider.h"
#import "CapsuleViewController.h"
#import "Coffee.h"

@implementation MainCollectionProvider

#pragma mark - UICollectionViewDelegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {

    Coffee *coffee = (Coffee *) self.list[indexPath.row];
    
    if ([coffee.capsules isKindOfClass:[NSSet class]]) {
        coffee.capsules = [((NSSet *) coffee.capsules) allObjects];
    }
    
    CapsuleViewController *controller = [CapsuleViewController fromStoryboard];
    controller.capsules = coffee.capsules;
    
    @weakify(self);
    controller.completion = ^(NSArray *capsules, int index) {
        @strongify(self);
        
        [self.list[index] setCapsules:capsules];
    };
    
    [self.controller showViewController:controller sender:nil];
}

#pragma mark - UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(collectionView.frame.size.width, 70);
}

@end
