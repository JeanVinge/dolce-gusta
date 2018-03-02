//
//  Coffees.h
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "BaseMantle.h"

@interface Coffee : BaseMantle

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSArray *capsules;

@end
