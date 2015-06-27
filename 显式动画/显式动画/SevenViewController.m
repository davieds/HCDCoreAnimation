//
//  SevenViewController.m
//  显式动画
//
//  Created by maiyun on 15/6/26.
//  Copyright © 2015年 黄成都. All rights reserved.
//

#import "SevenViewController.h"

@interface SevenViewController ()

@end

@implementation SevenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


- (IBAction)performTransition:(id)sender {
    UIGraphicsBeginImageContextWithOptions(self.view.bounds.size, YES, 0.0);
    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *converImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIView *coverView = [[UIImageView alloc]initWithImage:converImage];
    coverView.frame = self.view.bounds;
    [self.view addSubview:coverView];
    
    
    
    
    
}

@end
