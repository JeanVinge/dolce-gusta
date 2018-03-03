//
//  ViewController.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "NewCoffeeViewController.h"

@interface NewCoffeeViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation NewCoffeeViewController

- (IBAction)onTapSend:(UIBarButtonItem *)sender {
    
    Coffee *coffe = [[Coffee alloc] initWithName:self.textField.text];
    self.completion(coffe);
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
