//
//  UIView+Category.m
//  dolce-gusta
//
//  Created by Jean Vinge on 04/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "UIView+Category.h"

@implementation UIView (Category)

+ (NSString *)identifier {
    NSString *identifier = NSStringFromClass(self.class);
    return identifier;
}

+ (instancetype)loadFromNib {
    return (UIView *) [[[NSBundle mainBundle] loadNibNamed:[self identifier] owner:self options:nil] objectAtIndex:0];
}

@end
