//
//  TitleLabel.m
//  dolce-gusta
//
//  Created by Jean Vinge on 04/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "TitleLabel.h"

@implementation TitleLabel

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self initComponents];
}

- (void)initComponents {
    self.font = [UIFont boldSystemFontOfSize:16];
}

@end
