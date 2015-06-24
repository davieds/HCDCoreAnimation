//
//  SecondViewController.m
//  
//
//  Created by maiyun on 15/6/24.
//
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UIView *labelView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CATextLayer *textLayer  = [CATextLayer layer];
    textLayer.frame = self.labelView.bounds;
    [self.labelView.layer addSublayer:textLayer];
    
    //设置textLayer的属性
    textLayer.foregroundColor = [UIColor blackColor].CGColor;
    textLayer.alignmentMode = kCAAlignmentJustified;
    textLayer.wrapped = YES;
    textLayer.contentsScale = [UIScreen mainScreen].scale;

    UIFont *font = [UIFont systemFontOfSize:15];
    
    //设置layer的font
    CFStringRef fontName = (__bridge CFStringRef)font.fontName;
    CGFontRef fontRef = CGFontCreateWithFontName(fontName);
    textLayer.font = fontRef;
    textLayer.fontSize = font.pointSize;
    CGFontRelease(fontRef);
    
    NSString *text = @"Lorem ipsum dolor sit amet,consectetur alipiscing elit. quisque massa dsfas dfgadfdfgh ftghgwer dfgads sdfghsdfg sdfgasdf erthwertd dfthwtsdasd";
    textLayer.string = text;

}


@end
