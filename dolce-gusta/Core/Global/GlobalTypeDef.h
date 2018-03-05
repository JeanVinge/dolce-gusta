//
//  Typedef.h
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "Coffee.h"
#import "Capsule.h"
#import "CoffeeList.h"

typedef void (^CoffeeListCompletion)(CoffeeList *);
typedef void (^CapsuleListCompletion)(NSArray *, int);
typedef void (^CoffeeCompletion)(Coffee *);
typedef void (^CapsuleCompletion)(Capsule *);
typedef void (^FailureCompletion)(id, NSError *);
typedef void (^GenericCompletion)(id);
typedef void (^GenericTwoCompletion)(id, id);
typedef void (^EmptyCompletion)(void);
