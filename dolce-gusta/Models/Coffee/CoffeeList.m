//
//  CoffeesModel.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "CoffeeList.h"
#import "Coffee.h"

@implementation CoffeeList
    
+ (NSValueTransformer *)coffeesJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:Coffee.class];
}
    
+ (NSDictionary *)relationshipModelClassesByPropertyKey {
    return @{@"coffees":Coffee.class};
}

@end
