//
//  UICollectionView+Category.h
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <BKBaseCollectionViewCell.h>

@interface UICollectionView (Category)

- (void) registerNib:(BKBaseCollectionViewCell *)cell;

- (__kindof BKBaseCollectionViewCell *)dequeueReusableCellWithClass:(BKBaseCollectionViewCell *)cellClass forIndexPath:(NSIndexPath *)indexPath withObject:(id)object;

- (__kindof BKBaseCollectionViewCell *)dequeueReusableCellWithNibClass:(BKBaseCollectionViewCell *)cellClass forIndexPath:(NSIndexPath *)indexPath withObject:(id)object;

- (CGSize)sizeWithNibClass:(BKBaseCollectionViewCell *)cellClass forIndexPath:(NSIndexPath *)indexPath withObject:(id)object;

@end
