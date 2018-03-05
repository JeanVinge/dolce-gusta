//
//  SubtitleLabel.m
//  dolce-gusta
//
//  Created by Jean Vinge on 04/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "SubtitleLabel.h"

@implementation SubtitleLabel

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self initComponents];
}

- (void)initComponents {
    self.font = [UIFont italicSystemFontOfSize:12];
}

@end
