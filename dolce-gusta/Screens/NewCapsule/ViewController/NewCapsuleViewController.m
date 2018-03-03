//
//  NewCapsuleViewController.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "NewCapsuleViewController.h"

@interface NewCapsuleViewController ()

@end

@implementation NewCapsuleViewController

- (IBAction)onTapSend:(UIBarButtonItem *)sender {
    
    Capsule *capsule = [[Capsule new] initWithName:@"TESTE" imageURL:@"TESTE" instructions:@"TESTE"];
    self.completion(capsule);
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
