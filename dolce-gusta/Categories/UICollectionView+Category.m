//
//  UICollectionView+Category.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "UICollectionView+Category.h"
#import "BKBaseCollectionViewCell+Category.h"

@implementation UICollectionView (Category)

- (void)registerNib:(BKBaseCollectionViewCell *)cell {
    
    NSString *identifier = [[cell class] cellIdentifier];
    [self registerNib:[UINib nibWithNibName:identifier bundle:nil] forCellWithReuseIdentifier:identifier];
}

- (__kindof BKBaseCollectionViewCell *)dequeueReusableCellWithClass:(BKBaseCollectionViewCell *)cellClass forIndexPath:(NSIndexPath *)indexPath withObject:(id)object {
    
    BKBaseCollectionViewCell *cell = [self dequeueReusableCellWithReuseIdentifier:[[cellClass class] cellIdentifier] forIndexPath:indexPath];
    [cell setup:object];
    
    return cell;
}

- (__kindof BKBaseCollectionViewCell *)dequeueReusableCellWithNibClass:(BKBaseCollectionViewCell *)cellClass forIndexPath:(NSIndexPath *)indexPath withObject:(id)object {
    
    NSArray *bundle = (NSArray *) [[NSBundle mainBundle] loadNibNamed:[[cellClass class] cellIdentifier] owner:[cellClass self] options:nil];
    return (BKBaseCollectionViewCell *) bundle.firstObject;
}

- (CGSize)sizeWithNibClass:(BKBaseCollectionViewCell *)cellClass forIndexPath:(NSIndexPath *)indexPath withObject:(id)object {
    
    BKBaseCollectionViewCell *cell = [self dequeueReusableCellWithNibClass:cellClass forIndexPath:indexPath withObject:object];
    
    return [cell sizeWithObject:object];
}

@end
