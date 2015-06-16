//
//  GraphicsViewControllerView.m
//  
//
//  Created by maiyun on 15/6/16.
//
//

#import "GraphicsViewControllerView.h"

@implementation GraphicsViewControllerView

-(instancetype)init{
    self = [super init];
    if (self) {
        //self.backgroundColor = [UIColor greenColor];
    }
    return self;
}



-(void)drawRect:(CGRect)rect{
    [self drawX];
  
//    [self drawRooftopAtTopPointOf:CGPointMake(160.0f, 40.0f) textToDisplay:@"Miter" lineJoin:kCGLineJoinMiter];
//    
//    [self drawRooftopAtTopPointOf:CGPointMake(160.0f, 180.0f) textToDisplay:@"Bevel" lineJoin:kCGLineJoinBevel];
//    
//    [self drawRooftopAtTopPointOf:CGPointMake(160.0f, 320.0f) textToDisplay:@"Round" lineJoin:kCGLineJoinRound];

}

//绘制X
-(void)drawX{
    //创建一个路径变量
    CGMutablePathRef path = CGPathCreateMutable();
    //
    CGRect screenBounds = [[UIScreen mainScreen]bounds];
    //从左上角开始
    CGPathMoveToPoint(path,NULL, screenBounds.origin.x, screenBounds.origin.y);
    //画一条从左上角到右下角的线；
    CGPathAddLineToPoint(path, NULL, screenBounds.size.width, screenBounds.size.height);
    //移动到右上角
    CGPathMoveToPoint(path, NULL, screenBounds.size.width, screenBounds.origin.y);
    //画一条斜线
    CGPathAddLineToPoint(path, NULL, screenBounds.origin.x, screenBounds.size.height);
    //得到path已经画了的上下文
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    //把path添加到上下文
    CGContextAddPath(currentContext, path);
    //设置颜色
    [[UIColor blueColor]setStroke];
    //画线
    CGContextDrawPath(currentContext, kCGPathStroke);
    
    CGPathRelease(path);
}

-(void)drawRooftopAtTopPointOf:(CGPoint)paramTopPoint textToDisplay:(NSString *)paramText lineJoin:(CGLineJoin)paramLineJoin{
    
    [[UIColor brownColor] set];
    //得到上下文
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    //设置拐点处的样式
    CGContextSetLineJoin(currentContext, paramLineJoin);
    //设置线条宽度
    CGContextSetLineWidth(currentContext, 20.0f);
    CGContextMoveToPoint(currentContext, paramTopPoint.x - 140, paramTopPoint.y + 100);
    CGContextAddLineToPoint(currentContext, paramTopPoint.x, paramTopPoint.y);
    CGContextAddLineToPoint(currentContext, paramTopPoint.x + 140, paramTopPoint.y + 100);
    CGContextStrokePath(currentContext);
    [[UIColor blackColor]set];
    
    //设置文字
    [paramText drawAtPoint:CGPointMake(paramTopPoint.x - 40.0f, paramTopPoint.y + 60.0f) withAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:30.0f]}];
    
}

@end
