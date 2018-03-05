//
//  ViewController.h
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "BaseViewController.h"
#import "TextFieldView.h"
#import "BlueButton.h"

@interface NewCoffeeViewController : BaseViewController

@property (weak, nonatomic) IBOutlet TextFieldView *textFieldView;
@property (weak, nonatomic) IBOutlet BlueButton *button;

@property (nonatomic, copy) CoffeeCompletion completion;

@end
