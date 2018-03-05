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

@implementation DetailCollectionProvider

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    return [collectionView dequeueReusableCellWithClass:[DetailCell self] forIndexPath:indexPath withObject:self.list[indexPath.row]];
}

@end
