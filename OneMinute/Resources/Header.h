//
//  Header.h
//  OneMinute
//
//  Created by zhubinfeng on 2018/3/8.
//  Copyright © 2018年 appcpi. All rights reserved.
//

#ifndef Header_h
#define Header_h

//屏幕宽高
#define ScreenW [UIScreen mainScreen].bounds.size.width
#define ScreenH [UIScreen mainScreen].bounds.size.height

//控件适应各种机型
#define IPhone4_5_6_6P_X(a,b,c,d,e) (CGSizeEqualToSize(CGSizeMake(320, 480), [[UIScreen mainScreen] bounds].size) ?(a) :(CGSizeEqualToSize(CGSizeMake(320, 568), [[UIScreen mainScreen] bounds].size) ? (b) : (CGSizeEqualToSize(CGSizeMake(375, 667), [[UIScreen mainScreen] bounds].size) ?(c) : (CGSizeEqualToSize(CGSizeMake(414, 736), [[UIScreen mainScreen] bounds].size) ?(d) : e))))

//字符串是否为空
#define IsStrEmpty(_ref)    (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]) ||([(_ref)isEqualToString:@""]))

//数组是否为空
#define IsArrEmpty(_ref)    (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]) ||([(_ref) count] == 0))

//字典获取
#define EncodeFormDic(dic,key) [dic[key] isKindOfClass:[NSString class]] ? dic[key] :([dic[key] isKindOfClass:[NSNumber class]] ? [dic[key] stringValue]:@"")

//rgb获取颜色
#define RGBCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]
#endif /* Header_h */
