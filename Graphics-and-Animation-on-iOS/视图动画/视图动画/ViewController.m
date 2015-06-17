//
//  ViewController.m
//  视图动画
//
//  Created by maiyun on 15/6/17.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)UIImageView *XcodeImageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIImage *xcodeImage = [UIImage imageNamed:@"Xcode.png"];
    _XcodeImageView = [[UIImageView alloc]initWithImage:xcodeImage];
    [_XcodeImageView setFrame:CGRectMake(0.0f, 0.0f, 100.0f, 100.0f)];
    [self.view addSubview:self.XcodeImageView];
    
    [UIView beginAnimations:@"xcodeImageViewAnimation" context:(__bridge void *)(_XcodeImageView)];
    [UIView setAnimationDuration:5.0f];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(imageVieweDidStop:finished:context:)];
    [self.XcodeImageView setFrame:CGRectMake(200.0f, 350.0f, 100.0f, 100.0f)];
    [UIView commitAnimations];
    
}


-(void)imageVieweDidStop:(NSString *)paramAnimationID finished:(NSNumber *)paramFinished context:(void *)paramContext{
    NSLog(@"animation finished.");
    NSLog(@"Animation ID = %@",paramAnimationID);
    UIImageView *contextImageView =(__bridge UIImageView *)paramContext;
    NSLog(@"Image View = %@",contextImageView);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
