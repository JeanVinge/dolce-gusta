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

- (void)initComponents {
    self.title = @"New capsule";

    [self.nameTextFieldView configureWithTitle:@"Name" placeholderText:@"say about the capsule's name."];
    self.nameTextFieldView.textField.returnKeyType = UIReturnKeyNext;
    [self.nameTextFieldView.textField addTarget:self action:@selector(onTapReturnKeyWithTextField:) forControlEvents:UIControlEventEditingDidEndOnExit];
    [self.instructionsTextFieldView configureWithTitle:@"Instructions" placeholderText:@"tell me how to make this capsule."];
    self.instructionsTextFieldView.textField.returnKeyType = UIReturnKeyNext;
    [self.instructionsTextFieldView.textField addTarget:self action:@selector(onTapReturnKeyWithTextField:) forControlEvents:UIControlEventEditingDidEndOnExit];
    [self.imageURLTextFieldView configureWithTitle:@"URL's image" placeholderText:@"accept url to show capsule image."];
    self.imageURLTextFieldView.textField.returnKeyType = UIReturnKeySend;
    [self.imageURLTextFieldView.textField addTarget:self action:@selector(onTapReturnKeyWithTextField:) forControlEvents:UIControlEventEditingDidEndOnExit];
    
    [self changeSecondsLabel];
    [self.stepper addTarget:self action:@selector(changeSecondsLabel) forControlEvents:UIControlEventValueChanged];
    
}

- (IBAction)onTapSend:(UIBarButtonItem *)sender {
    
    NSString *name = self.nameTextFieldView.textField.text;
    NSString *instructions = self.instructionsTextFieldView.textField.text;
    NSString *url = self.imageURLTextFieldView.textField.text;
    NSNumber *seconds = [NSNumber numberWithLong: (unsigned long) self.stepper.value];
    
    if (name.length > 0) {
     
        Capsule *capsule = [[Capsule new] initWithName:name imageURL:url instructions:instructions seconds: seconds];
        self.completion(capsule);
        
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (void)changeSecondsLabel {
    self.secondsLabel.text = [NSString stringWithFormat:@"%02lu seconds to make this coffee.", (unsigned long) self.stepper.value];
}

- (void)onTapReturnKeyWithTextField:(UITextField *)textField {
    
    if ([self.nameTextFieldView.textField isEqual:textField]) {
        [self.instructionsTextFieldView.textField becomeFirstResponder];
    } else if ([self.instructionsTextFieldView.textField isEqual:textField]) {
        [self.imageURLTextFieldView.textField becomeFirstResponder];
    } else {
        [self onTapSend:nil];
    }
}

@end
