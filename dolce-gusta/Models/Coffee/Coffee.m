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

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        self.capsules = [NSArray new];
        self.name = name;
    }
    return self;
}
    
+ (NSValueTransformer *)capsulesJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:Capsule.class];
}
    
+ (NSDictionary *)relationshipModelClassesByPropertyKey {
    return @{@"capsules":Capsule.class};
}

@end
