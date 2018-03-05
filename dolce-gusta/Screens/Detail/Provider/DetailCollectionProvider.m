//
//  DetailCollectionProvider.m
//  dolce-gusta
//
//  Created by Jean Vinge on 04/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "DetailCollectionProvider.h"
#import "UICollectionView+Category.h"
#import "DetailCell.h"
#import <libextobjc/EXTScope.h>
#import "UIAlertController+Category.h"

@implementation DetailCollectionProvider

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    DetailCell *cell = [collectionView dequeueReusableCellWithClass:[DetailCell self] forIndexPath:indexPath withObject:self.list[indexPath.row]];
    
    [self checkCorrectMessageWithCell:cell];
    
    return cell;
}

- (void)checkCorrectMessageWithCell:(DetailCell *)cell {
    @weakify(self);
    cell.completionCounter = ^(DetailCell *cplCell) {
        @strongify(self);
        
        NSIndexPath *indexPath = [self.collectionView indexPathForCell:cplCell];
        
        if (self.list.count > 1) {
            
            [self.list removeObjectAtIndex:indexPath.row];
            [self.collectionView deleteItemsAtIndexPaths:@[indexPath]];
        } else {
            
            [self.controller presentViewController:[UIAlertController finishChronometer:^{
                
                [self.controller.navigationController popViewControllerAnimated:true];
                
            } retry:^{
                [cplCell.counterView reset];
            }] animated:true completion:nil];
        }
    };
}

@end
