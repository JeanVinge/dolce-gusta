//
//  BaseNavigationViewController.m
//  dolce-gusta
//
//  Created by Jean Vinge on 04/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "BaseNavigationViewController.h"

@interface BaseNavigationViewController ()

@end

@implementation BaseNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationBar.translucent = NO;
    self.navigationBar.backgroundColor = [UIColor whiteColor];
    [self.navigationBar setBackgroundImage:[UIImage new] forBarPosition:UIBarPositionBottom barMetrics:UIBarMetricsDefault];
    self.navigationBar.shadowImage = [UIImage new];
}

@end
