//
//  UIButton+ZLAImage.m
//  ZLApp
//
//  Created by MacTsin on 16/4/15.
//  Copyright © 2016年 MacTsin. All rights reserved.
//

#import "UIButton+ZLImage.h"

@implementation UIButton (ZLAImage)


+ (instancetype)zl_imageWithImage:(NSString *)image highImage:(NSString *)highImage color:(UIColor *)color highColor:(UIColor *)highColor
{
    if (!color) {
        color = [UIColor blackColor];
    }
    if (!highColor) {
        highColor = [UIColor lightGrayColor];
    }
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.zl_size = CGSizeMake(50, 30);
    [backBtn setTitle:@"返回" forState:UIControlStateNormal];
    [backBtn setTitleColor:color forState:UIControlStateNormal];
    [backBtn setTitleColor:highColor forState:UIControlStateHighlighted];
    [backBtn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    if (highImage) {
        [backBtn setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    }
    backBtn.imageEdgeInsets = UIEdgeInsetsMake(0, -5, 0, 0);
    backBtn.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
    return backBtn;
}

+ (instancetype)zl_imageWithImage:(NSString *)image
{
    return [self zl_imageWithImage:image highImage:nil];
}

+ (instancetype)zl_imageWithImage:(NSString *)image highImage:(NSString *)highImage
{
    return [self zl_imageWithImage:image highImage:highImage color:nil highColor:nil];
}


+ (instancetype)zl_imageWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    return [self zl_imageWithImage:image highImage:highImage target:target action:action color:nil highColor:nil];
}

+ (instancetype)zl_imageWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action color:(UIColor *)color highColor:(UIColor *)highColor
{
    UIButton *backBtn = [self zl_imageWithImage:image highImage:highImage color:color highColor:highColor];
    [backBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return backBtn;
}

@end
