//
//  NewCapsuleViewController.h
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "ViewController.h"
#import "TextFieldView.h"
#import "SubtitleLabel.h"

@interface NewCapsuleViewController : ViewController

@property (weak, nonatomic) IBOutlet TextFieldView *nameTextFieldView;
@property (weak, nonatomic) IBOutlet TextFieldView *instructionsTextFieldView;
@property (weak, nonatomic) IBOutlet TextFieldView *imageURLTextFieldView;
@property (weak, nonatomic) IBOutlet SubtitleLabel *secondsLabel;
@property (weak, nonatomic) IBOutlet UIStepper *stepper;

@property (nonatomic, copy) CapsuleCompletion completion;

@end
