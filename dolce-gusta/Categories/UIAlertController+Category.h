//
//  UIAlertController+Category.h
//  dolce-gusta
//
//  Created by Jean Vinge on 04/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GlobalTypeDef.h"

@interface UIAlertController (Category)

+ (UIAlertController *)finishChronometer:(EmptyCompletion)completionFinish retry:(EmptyCompletion)completionRetry;

@end
