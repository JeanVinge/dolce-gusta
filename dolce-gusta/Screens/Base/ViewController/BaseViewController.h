//
//  BaseViewController.h
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <libextobjc/EXTScope.h>
#import "GlobalTypeDef.h"

@interface BaseViewController : UIViewController

- (void)refreshAPIForceReload:(BOOL)forceReload;

@end
