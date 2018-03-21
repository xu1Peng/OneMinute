//
//  UIButton_Back.m
//  OneMinute
//
//  Created by Jerry on 2018/3/21.
//  Copyright © 2018年 appcpi. All rights reserved.
//

#import "UIButton_Back.h"

@implementation UIButton_Back

+(UIButton_Back *)buttonWithBackgroundImage:(NSString *)buttonBackImage Frame:(CGRect)frame
{
    //创建按钮对象
    UIButton_Back *backBtn = [[UIButton_Back alloc] initWithFrame:frame];
    //设置按钮背景图
    [backBtn setBackgroundImage:[UIImage imageNamed:buttonBackImage] forState:UIControlStateNormal];
//    [backBtn addTarget:self action:@selector(backForePage) forControlEvents:UIControlEventTouchUpInside];
    //返回一个按钮
    return backBtn;
}


//- (void)backForePage
//{
//    [self dismissViewControllerAnimated:YES completion:nil];
//}

@end
