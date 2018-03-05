//
//  BlueButton.m
//  dolce-gusta
//
//  Created by Jean Vinge on 04/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "BlueButton.h"

@implementation BlueButton

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self initComponents];
}

- (void)initComponents {
    self.backgroundColor = self.tintColor;
    self.layer.cornerRadius = 8;
    self.layer.masksToBounds = NO;
    self.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
}

@end
