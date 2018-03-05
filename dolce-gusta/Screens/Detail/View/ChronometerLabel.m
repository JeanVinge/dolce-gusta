//
//  ChronometerLabel.m
//  dolce-gusta
//
//  Created by Jean Vinge on 04/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "ChronometerLabel.h"

@interface ChronometerLabel()

@property (nonatomic, copy) NSString *name;

@end

@implementation ChronometerLabel

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self initComponents];
}

- (void)initComponents {
    self.font = [UIFont boldSystemFontOfSize:20];
    self.textColor = self.tintColor;
    self.textAlignment = NSTextAlignmentCenter;
    self.numberOfLines = 0;
}

- (void)capsuleWithName:(NSString *)name {
    self.name = name;
    self.text = [NSString stringWithFormat:@"Insert the capsule %@ in the coffee machine and start the chronometer.", [name lowercaseString]];
}

- (void)waitText {
    self.text = [NSString stringWithFormat:@"Wait till the capsule finish."];
}

- (void)changeTextWithIsSelected:(BOOL)isSelected {
    if (isSelected) {
        [self capsuleWithName:self.name];
    } else {
        [self waitText];
    }
}

@end
