//
//  ChronometerLabel.h
//  dolce-gusta
//
//  Created by Jean Vinge on 04/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "BaseLabel.h"

@interface ChronometerLabel : BaseLabel

- (void)capsuleWithName:(NSString *)name;
- (void)changeTextWithIsSelected:(BOOL)isSelected;

@end
