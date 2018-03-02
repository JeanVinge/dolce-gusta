//
//  BaseMantle.h
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <bricks-Mantle/BKMBaseMantleObj.h>
#import <MTLManagedObjectAdapter/MTLManagedObjectAdapter.h>

@interface BaseMantle : BKMBaseMantleObj <MTLManagedObjectSerializing>

@end
