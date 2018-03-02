//
//  BaseMantle.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "BaseMantle.h"

@implementation BaseMantle

+ (NSString *)managedObjectEntityName {
    return NSStringFromClass([self class]);
}
    
+ (NSDictionary *)managedObjectKeysByPropertyKey {
    return [self JSONKeyPathsByPropertyKey];
}

@end
