//
//  UIButton+ZLAImage.m
//  ZLApp
//
//  Created by MacTsin on 16/4/15.
//  Copyright © 2016年 MacTsin. All rights reserved.
//

#import "UIButton+ZLAImage.h"

@implementation UIButton (ZLAImage)

+ (instancetype)imageWithImage:(NSString *)image highImage:(NSString *)highImage color:(UIColor *)color highColor:(UIColor *)highColor
{
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.zl_size = CGSizeMake(50, 30);
    [backBtn setTitle:@"返回" forState:UIControlStateNormal];
    [backBtn setTitleColor:color forState:UIControlStateNormal];
    if (highColor) {
        [backBtn setTitleColor:highColor forState:UIControlStateHighlighted];
    }
    [backBtn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    if (highImage) {
        [backBtn setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    }
    backBtn.imageEdgeInsets = UIEdgeInsetsMake(0, -5, 0, 0);
    backBtn.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
    return backBtn;
}

+ (instancetype)imageWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action color:(UIColor *)color highColor:(UIColor *)highColor
{
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.zl_size = CGSizeMake(50, 30);
    [backBtn setTitle:@"返回" forState:UIControlStateNormal];
    [backBtn setTitleColor:color forState:UIControlStateNormal];
    if (highColor) {
        [backBtn setTitleColor:highColor forState:UIControlStateHighlighted];
    }
    [backBtn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    if (highImage) {
        [backBtn setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    }
    backBtn.imageEdgeInsets = UIEdgeInsetsMake(0, -5, 0, 0);
    backBtn.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
    [backBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return backBtn;
}

@end
