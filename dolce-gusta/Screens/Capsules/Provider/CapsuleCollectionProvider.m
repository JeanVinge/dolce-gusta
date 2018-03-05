//
//  CapsuleCollectionProvider.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "CapsuleCollectionProvider.h"
#import "DetailViewController.h"

@implementation CapsuleCollectionProvider

#pragma mark - UICollectionViewDelegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    DetailViewController *controller = [DetailViewController fromStoryboard];
    controller.capsules = @[self.list[indexPath.row]];
    
    [self.controller showViewController:controller sender:nil];
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(collectionView.frame.size.width, 100);
}

@end
