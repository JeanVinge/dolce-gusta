//
//  FormLabel.m
//  dolce-gusta
//
//  Created by Jean Vinge on 04/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "FormLabel.h"

@implementation FormLabel

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self initComponents];
}

- (void)initComponents {
    self.font = [UIFont boldSystemFontOfSize:14];
}

@end
