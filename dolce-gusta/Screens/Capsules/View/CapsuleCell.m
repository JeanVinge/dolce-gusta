//
//  CapsuleCell.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "CapsuleCell.h"
#import "Capsule.h"

@implementation CapsuleCell

- (void)setup:(id)object {
    
    Capsule *capsule = (Capsule *) object;
    
    self.titleLabel.text = capsule.name;
}

@end
