//
//  UIViewController+Category.h
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Category)

+ (NSString *)identifier;
+ (instancetype)fromStoryboard;

@end
