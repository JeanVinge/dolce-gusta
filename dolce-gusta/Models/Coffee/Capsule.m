//
//  Capsules.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "Capsule.h"

@implementation Capsule

- (instancetype)initWithName:(NSString *)name imageURL:(NSString *)imageURL instructions:(NSString *)instructions {
    
    self = [super init];
    if (self) {
        self.name = name;
        self.imageURL = imageURL;
        self.instructions = instructions;
    }
    return self;
}

@end
