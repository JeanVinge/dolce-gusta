//
//  TextFieldView.m
//  dolce-gusta
//
//  Created by Jean Vinge on 04/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "TextFieldView.h"
#import "UIView+Category.h"

@implementation TextFieldView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        
        [[NSBundle mainBundle] loadNibNamed:[TextFieldView identifier] owner:self options:nil];
        
        [self addSubview:self.contentView];
        self.contentView.frame = self.bounds;
        
    }
    return self;
}

- (void)configureWithTitle:(NSString *)title placeholderText:(NSString *)placeholder {
    self.titleLabel.text = [title capitalizedString];
    self.textField.placeholder = placeholder;
}

@end
