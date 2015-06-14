//
//  ViewController.m
//  图层相关知识
//
//  Created by 黄成都 on 15/6/14.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "AnimationType.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)UITableView *tableview;
@property(nonatomic,strong)NSMutableArray *dataSourceList;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableview = [[UITableView alloc]init];
    self.tableview.frame = self.view.frame;
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
    self.tableview.contentInset = UIEdgeInsetsMake(20, 0, 0, 0);
    [self.view addSubview:self.tableview];
    
    self.dataSourceList = [NSMutableArray array];
    
    AnimationType *animationType;
    animationType = [[AnimationType alloc]initWithTitle:@"关于图层" detailTitle:@"把一个CALayer添加到视图中FirstVC第一章"];
    [self.dataSourceList addObject:animationType];
    
    animationType = [[AnimationType alloc]initWithTitle:@"图片拼接" detailTitle:@"图片切割拼接SecondVC第二章"];
    [self.dataSourceList addObject:animationType];
    
    
    animationType = [[AnimationType alloc]initWithTitle:@"图片拉伸" detailTitle:@"图片拉伸ThirtdVC第二章"];
     [self.dataSourceList addObject:animationType];
     animationType = [[AnimationType alloc]initWithTitle:@"绘制图片" detailTitle:@"CALayer绘制图片FourthVC第二章"];
    [self.dataSourceList addObject:animationType];
    
    [self.tableview reloadData];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataSourceList.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"aaaaa"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"aaaaa"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    AnimationType *currentType = self.dataSourceList[indexPath.row];
    cell.textLabel.text = currentType.title;
    cell.detailTextLabel.text = currentType.detailTitle;
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 40;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {//使用图层
        FirstViewController *firstVC = [[FirstViewController alloc]init];
        [self.navigationController pushViewController:firstVC animated:YES];
    }else if(indexPath.row == 1){
        SecondViewController *secondVC = [[SecondViewController alloc]init];
        [self.navigationController pushViewController:secondVC animated:YES];
    }else if(indexPath.row == 2){
        ThirdViewController *thirdVC = [[ThirdViewController alloc]init];
        [self.navigationController pushViewController:thirdVC animated:YES];
    }else if(indexPath.row == 3){
        FourthViewController *fourthVC = [[FourthViewController alloc]init];
        [self.navigationController pushViewController:fourthVC animated:YES];
    }
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
