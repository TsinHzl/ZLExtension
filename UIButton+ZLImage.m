//
//  UIButton+ZLAImage.m
//  ZLApp
//
//  Created by MacTsin on 16/4/15.
//  Copyright © 2016年 MacTsin. All rights reserved.
//

#import "UIButton+ZLImage.h"
#import "UIView+ZLExtension.h"

@implementation UIButton (ZLAImage)

#pragma mark - 设置只有image的button

+ (instancetype)zl_imageButtonWithImage:(NSString *)image
{
    return [self zl_imageButtonWithImage:image highImage:nil];
}

+ (instancetype)zl_imageButtonWithImage:(NSString *)image target:(id)target action:(SEL)action
{
    UIButton *button = [self zl_imageButtonWithImage:image];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return button;
}

+ (instancetype)zl_imageButtonWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    UIButton *button = [self zl_imageButtonWithImage:image highImage:highImage];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return button;
}

+ (instancetype)zl_imageButtonWithImage:(NSString *)image highImage:(NSString *)highImage
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    if (highImage) {
        [button setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    }
    CGRect f = button.frame;
    f.size = button.currentImage.size;
    button.frame = f;
    return button;
}

#pragma mark - 设置既有image又有title的button

+ (instancetype)zl_buttonWithImage:(NSString *)image highImage:(NSString *)highImage color:(UIColor *)color highColor:(UIColor *)highColor
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

+ (instancetype)zl_buttonWithImage:(NSString *)image
{
    return [self zl_buttonWithImage:image highImage:nil];
}

+ (instancetype)zl_buttonWithImage:(NSString *)image highImage:(NSString *)highImage
{
    return [self zl_buttonWithImage:image highImage:highImage color:nil highColor:nil];
}


+ (instancetype)zl_buttonWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    return [self zl_buttonWithImage:image highImage:highImage target:target action:action color:nil highColor:nil];
}

+ (instancetype)zl_buttonWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action color:(UIColor *)color highColor:(UIColor *)highColor
{
    UIButton *backBtn = [self zl_buttonWithImage:image highImage:highImage color:color highColor:highColor];
    [backBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return backBtn;
}

@end
