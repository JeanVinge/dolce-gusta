//
//  BaseImageView.m
//  dolce-gusta
//
//  Created by Jean Vinge on 04/03/2018.
//  Copyright © 2018 Jean Vinge. All rights reserved.
//

#import "BaseImageView.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import <libextobjc/EXTScope.h>

@implementation BaseImageView

- (void)awakeFromNib {
    [super awakeFromNib];
    [self initComponents];
}

- (void)reset {
    self.image = nil;
}

- (void)initComponents {
    self.contentMode = UIViewContentModeScaleAspectFill;
    self.layer.cornerRadius = self.bounds.size.height / 2;
    self.layer.masksToBounds = NO;
    self.clipsToBounds = YES;
}

- (void)configureWithURL:(NSURL *)url {
    @weakify(self);
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        @strongify(self);
        [self sd_setImageWithURL:url];
    });
}

@end
