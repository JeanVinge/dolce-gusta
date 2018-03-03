//
//  BaseCollectionProvider.h
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "UIViewController+Category.h"
#import "BKBaseCollectionViewDatasourceAndDelegate.h"

@interface BaseCollectionProvider : BKBaseCollectionViewDatasourceAndDelegate <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) NSMutableArray *list;

- (instancetype)initWithModelController:(UIViewController *)controller collectionView:(UICollectionView *)collectionView withClass:(__kindof UICollectionViewCell *)cellClass;

- (void)add:(id)item;
- (void)deleteAtIndex:(int)index;
- (void)refresh: (NSArray *)list;

@end
