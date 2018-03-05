//
//  TextFieldView.h
//  dolce-gusta
//
//  Created by Jean Vinge on 04/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FormLabel.h"

@interface TextFieldView : UIView

@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet FormLabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;

- (void)configureWithTitle:(NSString *)title placeholderText:(NSString *)placeholder;

@end
