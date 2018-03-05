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

- (void)prepareForReuse {
    [super prepareForReuse];
    
//    [self.titleLabel reset];
    [self.subtitleLabel reset];
    [self.imageView reset];
}

- (void)setup:(id)object {
    
    Capsule *capsule = (Capsule *) object;
    
    self.titleLabel.text = [capsule.name capitalizedString];
    [self.imageView configureWithURL: [NSURL URLWithString:capsule.imageURL]];
    self.subtitleLabel.text = [NSString stringWithFormat:@"make this capsule in %@ seconds", capsule.seconds.stringValue];
}

@end
