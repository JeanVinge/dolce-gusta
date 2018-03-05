//
//  UIAlertController+Category.m
//  dolce-gusta
//
//  Created by Jean Vinge on 04/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "UIAlertController+Category.h"

@implementation UIAlertController (Category)

+ (UIAlertController *)finishChronometer:(EmptyCompletion)completionFinish retry:(EmptyCompletion)completionRetry {
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:@"Look's like your coffee is ready!!"
                                 message:@"Let's enjoy your coffee!"
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    //Add Buttons
    
    UIAlertAction* finish = [UIAlertAction
                                actionWithTitle:@"Done!"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    completionFinish();
                                }];
    
    UIAlertAction* retry = [UIAlertAction
                               actionWithTitle:@"Retry"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
                                   completionRetry();
                               }];
    
    //Add your buttons to alert controller
    
    [alert addAction:finish];
    [alert addAction:retry];
    
    return alert;
}

@end
