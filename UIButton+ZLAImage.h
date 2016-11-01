//
//  UIButton+ZLAImage.h
//  ZLApp
//
//  Created by MacTsin on 16/4/15.
//  Copyright © 2016年 MacTsin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (ZLAImage)

+ (instancetype)imageWithImage:(NSString *)image highImage:(NSString *)highImage color:(UIColor *)color highColor:(UIColor *)highColor;

+ (instancetype)imageWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action color:(UIColor *)color highColor:(UIColor *)highColor;

@end
