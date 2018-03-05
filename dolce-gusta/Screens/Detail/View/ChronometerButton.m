//
//  ChronometerButton.m
//  dolce-gusta
//
//  Created by Jean Vinge on 04/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "ChronometerButton.h"

@implementation ChronometerButton

- (void)initComponents {
    [super initComponents];
    [self setTitle:@"Start chronometer" forState:UIControlStateNormal];
    [self setTitle:@"Reset chronometer" forState:UIControlStateSelected];
}

@end
