//
//  BaseCollectionProvider.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "BaseCollectionProvider.h"
#import "UICollectionView+Category.h"

@interface BaseCollectionProvider()

@property (nonatomic, strong) __kindof UICollectionViewCell *cellClass;

@end

@implementation BaseCollectionProvider

#pragma mark - Init Methods

- (instancetype)initWithModelController:(UIViewController *)controller collectionView:(UICollectionView *)collectionView withClass:(__kindof UICollectionViewCell *)cellClass {
    
    self.cellClass = cellClass;
    self = [super initWithModelContainer:nil controller:controller collectionView:collectionView];
    
    if (self) {
        self.collectionView.dataSource = self;
        self.collectionView.delegate = self;
    }
    
    return self;
}

- (void)registerCells {
    [self.collectionView registerNib: [self.cellClass self]];
}

- (void)refresh:(NSArray *)list {
    self.list = list.mutableCopy;
    [self.collectionView reloadData];
}

- (void)add:(id)item {
    [self.list addObject:item];
    [self.collectionView reloadData];
}

- (void)deleteAtIndex:(int)index {
    [self.list removeObjectAtIndex:index];
    [self.collectionView reloadData];
}

- (void)clear {
    [self.list removeAllObjects];
    [self.collectionView reloadData];
}

#pragma mark - UICollectionViewDatasource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.list.count;
}

#pragma mark - UICollectionViewDelegate

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    id object = [self.list objectAtIndex:indexPath.row];
    
    return [collectionView dequeueReusableCellWithClass:[self.cellClass self] forIndexPath:indexPath withObject: object];
}

#pragma mark - UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(collectionView.frame.size.width, 40);
}

@end
