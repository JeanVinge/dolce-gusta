//
//  Capsules.h
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "BaseMantle.h"

@interface Capsule : BaseMantle

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *imageURL;
@property (nonatomic, copy) NSNumber *seconds;
@property (nonatomic, copy) NSString *instructions;

- (instancetype)initWithName:(NSString *)name imageURL:(NSString *)imageURL instructions:(NSString *)instructions;
    
@end
