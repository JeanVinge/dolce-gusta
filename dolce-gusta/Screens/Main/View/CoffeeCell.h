//
//  CoffeeCell.h
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "BKBaseCollectionViewCell.h"
#import "TitleLabel.h"

@interface CoffeeCell : BKBaseCollectionViewCell

@property (weak, nonatomic) IBOutlet TitleLabel *titleLabel;

@end
