//
//  DetailCell.h
//  dolce-gusta
//
//  Created by Jean Vinge on 04/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "BKBaseCollectionViewCell.h"
#import "BaseCounterView.h"
#import "BaseImageView.h"
#import "TitleLabel.h"
#import "SubtitleLabel.h"
#import "ChronometerButton.h"
#import "ChronometerLabel.h"

@interface DetailCell : BKBaseCollectionViewCell

typedef void (^DetailCellCompletion)(DetailCell *);

@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet TitleLabel *titleLabel;
@property (weak, nonatomic) IBOutlet BaseImageView *boxImageView;
@property (weak, nonatomic) IBOutlet SubtitleLabel *instructionLabel;
@property (weak, nonatomic) IBOutlet BaseCounterView *counterView;
@property (weak, nonatomic) IBOutlet ChronometerLabel *chronometerLabel;
@property (weak, nonatomic) IBOutlet ChronometerButton *button;

@property (nonatomic, copy) DetailCellCompletion completionCounter;

@end
