//
//  LikeViewController.m
//  OneMinute
//
//  Created by Jerry on 2018/3/21.
//  Copyright © 2018年 appcpi. All rights reserved.
//
#import "Header.h"
#import "UIButton_Back.h"
#import "UIColor+Addition.h"
#import "MyLikeViewController.h"
#import "LikeViewController.h"

@interface LikeViewController ()
@property (nonatomic, strong) UIButton *matchBtn;
@property (nonatomic, strong) UIButton *chatBtn;
@property (nonatomic, strong) UIView *subView;
@end

@implementation LikeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //隐藏navigationBar
    [self hideNavigationBar];
    [self setViewBackgroundColor];
    //设置subView
    [self setSubView];
    [self createUI:self.matchBtn];
}


- (void)setSubView{
    //设置左导航
    UIButton_Back *backBtn = [UIButton_Back buttonWithBackgroundImage:@"arrow_left.png" Frame:CGRectMake(15, 32, 13, 20)];
    [backBtn setTag:10010];
     [backBtn addTarget:self action:@selector(backForePage:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backBtn];
    
    //设置右导航
    UIButton_Back *likeBtn = [UIButton_Back buttonWithBackgroundImage:@"like.png" Frame:CGRectMake(ScreenW-40, 32, 23, 20)];
    [likeBtn setTag:10086];
    [likeBtn addTarget:self action:@selector(backForePage:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:likeBtn];
    
    self.subView = [[UIView alloc] init];
    self.subView.frame = CGRectMake(0,84,ScreenW,ScreenH);
    [self.view addSubview:self.subView];
    
    //匹配Button
    self.matchBtn = [[UIButton alloc] initWithFrame:CGRectMake(80, 60, 35, 18)];
    [self.matchBtn setTag:110];
    [self.matchBtn setTitle:@"匹配" forState:UIControlStateNormal];
    [self.matchBtn.titleLabel setFont:[UIFont systemFontOfSize:17.0]];
    [self.matchBtn addTarget:self action:@selector(createUI:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.matchBtn];
    
    //聊天Button
    self.chatBtn = [[UIButton alloc] initWithFrame:CGRectMake(ScreenW-120, 60, 35, 18)];
    [self.chatBtn setTag:119];
    [self.chatBtn setTitle:@"聊天" forState:UIControlStateNormal];
    [self.chatBtn.titleLabel setFont:[UIFont systemFontOfSize:17.0]];
    [self.chatBtn addTarget:self action:@selector(createUI:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.chatBtn];
}

- (void)createUI:(UIButton *)sender{
    if (sender.tag == 110) {
        [self.matchBtn setAlpha:1];
        [self.chatBtn setAlpha:0.5];
        self.subView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];
        [self noMatchingData];
        
    }else if (sender.tag == 119){
        [self.chatBtn setAlpha:1];
        [self.matchBtn setAlpha:0.5];
         self.subView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background_chat.png"]];
         [self noMatchingData];
    }
   
}
- (void)backForePage:(UIButton *)sender
{
    if(sender.tag == 10010){
        [self dismissViewControllerAnimated:YES completion:nil];
    }else if (sender.tag == 10086){
        MyLikeViewController *myLikeVC = [[MyLikeViewController alloc] init];
        [self presentViewController:myLikeVC animated:NO completion:nil];
    }
}

- (void)hideNavigationBar{
    
}
- (void)setViewBackgroundColor{
    //初始化CAGradientlayer对象，使它的大小为UIView的大小
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = self.view.frame;
    //设置渐变区域的起始和终止位置
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(1, 0);
    
    
    //设置颜色数组
    UIColor *startColor = [UIColor colorWithHex:@"#FF4676"];
    UIColor *endColor = [UIColor colorWithHex:@"#FB946B"];
    gradientLayer.colors = @[(__bridge id)startColor.CGColor,
                             (__bridge id)endColor.CGColor];
    //设置颜色分割点
    gradientLayer.locations = @[@(0.1f), @(1.0f)];
    [self.view.layer addSublayer:gradientLayer];
}


//没有匹配到内容
- (void)noMatchingData{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake((ScreenW-50)/2, 90, 50, 40)];
    imageView.image = [UIImage imageNamed:@"cat"];
    [self.subView addSubview:imageView];
    
    UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake((ScreenW-165)/2, 150, 170, 40)];
    lab.text = @"您还没有匹配对象\n快去认识一些新朋友吧";
    lab.numberOfLines = 2;
    [lab setAlpha:0.5];
    lab.textAlignment =NSTextAlignmentCenter;
    lab.font = [UIFont systemFontOfSize:16.0];
    [self.subView addSubview:lab];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake((ScreenW-255)/2, 245, 255, 40)];
    [btn setBackgroundImage:[UIImage imageNamed:@"btn_background"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(startMatching:) forControlEvents:UIControlEventTouchUpInside];
    
    [btn setTitle:@"马上开始" forState:UIControlStateNormal];
    [btn.titleLabel setFont:[UIFont fontWithName:@"PingFang-SC-Bold" size:14.0]];
    [btn.titleLabel setFont:[UIFont systemFontOfSize:14.0]];
    [self.subView addSubview:btn];
}
- (void)startMatching:(UIButton *)sender{}
@end
