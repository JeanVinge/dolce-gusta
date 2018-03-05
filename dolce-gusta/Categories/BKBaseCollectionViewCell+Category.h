//
//  UICollectionViewCell+Category.h
//  dolce-gusta
//
//  Created by Jean Vinge on 04/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionViewCell (Category)

- (CGSize)desirableSizeWith:(CGSize)size;
- (CGSize)sizeWithObject:(id)object;

@end
