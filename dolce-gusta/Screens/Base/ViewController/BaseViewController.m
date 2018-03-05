//
//  BaseViewController.m
//  dolce-gusta
//
//  Created by Jean Vinge on 02/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController
    
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"";
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@" " style:UIBarButtonItemStylePlain target:nil action:nil];
    
    [self initComponents];
    [self refreshAPIForceReload:NO];
}

- (void)refreshAPIForceReload:(BOOL)forceReload {
}

- (void)initComponents {
}
    
@end
