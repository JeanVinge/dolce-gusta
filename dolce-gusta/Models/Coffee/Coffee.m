//
//  Coffees.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "Coffee.h"
#import "Capsule.h"

@implementation Coffee
    
+ (NSValueTransformer *)capsulesJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:Capsule.class];
}
    
+ (NSDictionary *)relationshipModelClassesByPropertyKey {
    return @{@"capsules":Capsule.class};
}

@end
