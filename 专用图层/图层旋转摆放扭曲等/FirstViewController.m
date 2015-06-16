//
//  FirstViewController.m
//  
//
//  Created by maiyun on 15/6/15.
//
//

#import "FirstViewController.h"

@interface FirstViewController ()

@property (weak, nonatomic) IBOutlet UIView *containerView;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    UIBezierPath *path = [[UIBezierPath alloc]init];
    //移动到一个点
    [path moveToPoint:CGPointMake(175, 100)];
    //移动到一个中心点，画圆。。。。
    [path addArcWithCenter:CGPointMake(150, 100) radius:25 startAngle:0 endAngle:2*M_PI clockwise:YES];
    [path moveToPoint:CGPointMake(150, 125)];
    //已上面那个点为起点，已下面那个点为终点，画一条线。
    [path addLineToPoint:CGPointMake(150, 175)];
    //
}
@end
