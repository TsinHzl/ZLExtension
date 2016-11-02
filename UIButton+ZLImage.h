//
//  UIButton+ZLImage.h
//  ZLApp
//
//  Created by MacTsin on 16/4/15.
//  Copyright © 2016年 MacTsin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (ZLImage)



+ (instancetype)zl_imageWithImage:(NSString *)image;

+ (instancetype)zl_imageWithImage:(NSString *)image highImage:(NSString *)highImage;

+ (instancetype)zl_imageWithImage:(NSString *)image highImage:(NSString *)highImage color:(UIColor *)color highColor:(UIColor *)highColor;

+ (instancetype)zl_imageWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;

+ (instancetype)zl_imageWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action color:(UIColor *)color highColor:(UIColor *)highColor;

@end
