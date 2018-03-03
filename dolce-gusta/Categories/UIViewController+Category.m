//
//  UIViewController+Category.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "UIViewController+Category.h"

@implementation UIViewController (Category)

+ (NSString *)identifier {
    NSString *identifier = NSStringFromClass(self.class);
    return identifier;
}

+ (instancetype)fromStoryboard {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    return [sb instantiateViewControllerWithIdentifier:[self identifier]];
}

@end
