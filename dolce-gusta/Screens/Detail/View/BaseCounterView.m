//
//  BaseCounter.m
//  dolce-gusta
//
//  Created by Jean Vinge on 04/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "BaseCounterView.h"

@implementation BaseCounterView

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self initComponents];
}

- (void)initComponents {
    self.outerCircleThickness = [NSNumber numberWithFloat:20.0];
    self.innerCircleThickness = [NSNumber numberWithFloat:1.0];
    self.outerTrackColor = [UIColor clearColor];
    self.circleDistance = [NSNumber numberWithFloat:6.0];
}

@end
