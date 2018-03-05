//
//  DetailCell.m
//  dolce-gusta
//
//  Created by Jean Vinge on 04/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "DetailCell.h"
#import "Capsule.h"
#import <SFRoundProgressView.h>

@interface DetailCell() <SFRoundProgressCounterViewDelegate>

@end

@implementation DetailCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self initComponents];
}

- (void)initComponents {
    self.titleLabel.textColor = [UIColor whiteColor];
    self.boxImageView.backgroundColor = [UIColor whiteColor];
    self.containerView.backgroundColor = self.tintColor;
    self.containerView.layer.cornerRadius = 10;
    self.containerView.layer.masksToBounds = YES;
    self.counterView.delegate = self;
}

- (void)prepareForReuse {
    [super prepareForReuse];

    [self.layer removeAllAnimations];
    [self.titleLabel reset];
    [self.instructionLabel reset];
    [self.boxImageView reset];
}

- (void)setup:(id)object {
    
    Capsule *capsule = (Capsule *) object;
    
    self.titleLabel.text = [capsule.name capitalizedString];
    self.instructionLabel.text = capsule.instructions;
    
    NSNumber *interval = [NSNumber numberWithLong:capsule.seconds.integerValue * 1000];
    self.counterView.intervals = @[interval];
                                   
    [self.boxImageView configureWithURL:[NSURL URLWithString:capsule.imageURL]];
    [self.chronometerLabel capsuleWithName:capsule.name];
}

- (void)lockButton:(BOOL)lock {
    [self.button setEnabled:lock];
}

#pragma mark - SFRoundProgressCounterViewDelegate

- (void)countdownDidEnd:(SFRoundProgressCounterView *)progressCounterView {
}

#pragma mark - Action Methods

- (IBAction)onTapButton:(ChronometerButton *)sender {
    
    [self.chronometerLabel changeTextWithIsSelected:self.button.isSelected];
    
    if (self.button.isSelected) {
        [self.counterView reset];
    } else {
        [self.counterView start];
    }
    
    [self.button setSelected:!self.button.isSelected];
}

@end
