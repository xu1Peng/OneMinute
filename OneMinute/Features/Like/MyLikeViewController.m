//
//  MyLikeViewController.m
//  OneMinute
//
//  Created by Jerry on 2018/3/21.
//  Copyright © 2018年 appcpi. All rights reserved.
//

#import "UIButton_Back.h"
#import "MyLikeViewController.h"

@interface MyLikeViewController ()

@end

@implementation MyLikeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置左导航
    UIButton_Back *backBtn = [UIButton_Back buttonWithBackgroundImage:@"back.png" Frame:CGRectMake(15, 32, 13, 20)];
    [backBtn addTarget:self action:@selector(backForePage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backBtn];
    [self setTitleLabel];
    [self noLikeData];
}

- (void)setTitleLabel{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 80, 22, 22)];
    imageView.image = [UIImage imageNamed:@"heart"];
    [self.view addSubview:imageView];
    
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(52.5,80,93.5,22.5);
    label.text = @"我喜欢的";
    [label setFont:[UIFont fontWithName:@"Helvetica-Bold" size:20]];;
    label.textColor = [UIColor colorWithRed:51/255 green:51/255 blue:51/255 alpha:1];
    [self.view addSubview:label];
}

- (void)noLikeData{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake((ScreenW-50)/2, 170, 50, 40)];
    imageView.image = [UIImage imageNamed:@"cat"];
    [self.view addSubview:imageView];
    
    UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake((ScreenW-165)/2, 230, 170, 40)];
    lab.text = @"您还没有喜欢的对象\n快去认识一些新朋友吧";
    lab.numberOfLines = 2;
    [lab setAlpha:0.5];
    lab.textAlignment =NSTextAlignmentCenter;
    lab.font = [UIFont systemFontOfSize:16.0];
    [self.view addSubview:lab];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake((ScreenW-255)/2, 325, 255, 40)];
    [btn setBackgroundImage:[UIImage imageNamed:@"btn_background"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(startMatching:) forControlEvents:UIControlEventTouchUpInside];
    
    [btn setTitle:@"马上开始" forState:UIControlStateNormal];
    [btn.titleLabel setFont:[UIFont fontWithName:@"PingFang-SC-Bold" size:14.0]];
    [btn.titleLabel setFont:[UIFont systemFontOfSize:14.0]];
    [self.view addSubview:btn];
}
- (void)backForePage
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)startMatching:(UIButton *)sender{}
@end
