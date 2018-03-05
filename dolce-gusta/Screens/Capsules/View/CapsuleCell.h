//
//  CapsuleCell.h
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "BKBaseCollectionViewCell.h"
#import "TitleLabel.h"
#import "SubtitleLabel.h"
#import "BaseImageView.h"

@interface CapsuleCell : BKBaseCollectionViewCell

@property (weak, nonatomic) IBOutlet TitleLabel *titleLabel;
@property (weak, nonatomic) IBOutlet BaseImageView *imageView;
@property (weak, nonatomic) IBOutlet SubtitleLabel *subtitleLabel;

@end
