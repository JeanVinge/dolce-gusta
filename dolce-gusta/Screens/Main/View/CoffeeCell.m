//
//  CoffeeCell.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "CoffeeCell.h"
#import "Coffee.h"

@implementation CoffeeCell

- (void)setup:(id)object {
    
    Coffee *coffee = (Coffee *) object;
    
    self.titleLabel.text = coffee.name;
}

@end
