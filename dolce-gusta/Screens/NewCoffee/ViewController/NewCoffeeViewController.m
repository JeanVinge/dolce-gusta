//
//  ViewController.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "NewCoffeeViewController.h"

@implementation NewCoffeeViewController

- (void)initComponents {
    
    self.title = @"New Coffee";
    
    [self.textFieldView configureWithTitle:@"Name" placeholderText:@"espresso for eg."];

    [self.textFieldView.textField addTarget:self action:@selector(onTapSend:) forControlEvents:UIControlEventEditingDidEnd];
}

- (IBAction)onTapSend:( UIButton*)sender {
    
    if (self.textFieldView.textField.text.length > 0) {
     
        Coffee *coffe = [[Coffee alloc] initWithName:self.textFieldView.textField.text];
        self.completion(coffe);
        
        [self.navigationController popViewControllerAnimated:YES];
    }
}

@end
