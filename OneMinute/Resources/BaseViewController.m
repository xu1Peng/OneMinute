//
//  BaseViewController.m
//  OneMinute
//
//  Created by Jerry on 2018/3/14.
//  Copyright © 2018年 appcpi. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()
@property (nonatomic, strong) UIButton *leftBtn;
@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createLeftBarButtonItem];
}

- (void)createLeftBarButtonItem{

    self.leftBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 12, 20)];
    [self.leftBtn setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    [self.leftBtn addTarget:self action:@selector(clickBack:) forControlEvents:UIControlEventTouchUpInside];
    self.leftBtn.contentEdgeInsets =UIEdgeInsetsMake(0, 0,0, 0);
    self.leftBtn.imageEdgeInsets =UIEdgeInsetsMake(0, 0,0, 0);
   
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:self.leftBtn];
    
    
    UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    negativeSpacer.width = 0;
    if (@available(iOS 11.0, *)) {

        self.navigationItem.leftBarButtonItem = leftItem;
    }else{
        self.navigationItem.leftBarButtonItems = [NSArray arrayWithObjects:negativeSpacer, leftItem, nil];
    }

}

- (void)clickBack:(UIButton *)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
