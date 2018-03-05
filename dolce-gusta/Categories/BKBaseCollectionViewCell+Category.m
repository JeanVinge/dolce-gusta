//
//  UICollectionViewCell+Category.m
//  dolce-gusta
//
//  Created by Jean Vinge on 04/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "BKBaseCollectionViewCell+Category.h"
#import <BKBaseCollectionViewCell.h>

@implementation BKBaseCollectionViewCell (Category)

- (CGSize)sizeWithObject:(id)object {
    [self setup:object];
    return [self calculatedSize];
}

- (CGSize)calculatedSize {
    
    [self setNeedsLayout];
    [self layoutIfNeeded];
    
    CGSize size = [self.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    CGSize desirableSize = [self desirableSizeWith:size];
    
    return desirableSize;
}

- (CGSize)desirableSizeWith:(CGSize)size {
    
    CGSize mSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width, size.height);
    
    return mSize;
}

@end
