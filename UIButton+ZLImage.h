//
//  UIButton+ZLImage.h
//  ZLApp
//
//  Created by MacTsin on 16/4/15.
//  Copyright © 2016年 MacTsin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (ZLImage)

/** 设置只有image的button **/
+ (instancetype)zl_imageButtonWithImage:(NSString *)image;
+ (instancetype)zl_imageButtonWithImage:(NSString *)image target:(id)target action:(SEL)action;

+ (instancetype)zl_imageButtonWithImage:(NSString *)image highImage:(NSString *)highImage;
+ (instancetype)zl_imageButtonWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;

/** 设置既有image又有title的button **/
+ (instancetype)zl_buttonWithImage:(NSString *)image;

+ (instancetype)zl_buttonWithImage:(NSString *)image highImage:(NSString *)highImage;

+ (instancetype)zl_buttonWithImage:(NSString *)image highImage:(NSString *)highImage color:(UIColor *)color highColor:(UIColor *)highColor;

+ (instancetype)zl_buttonWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;

+ (instancetype)zl_buttonWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action color:(UIColor *)color highColor:(UIColor *)highColor;

@end
