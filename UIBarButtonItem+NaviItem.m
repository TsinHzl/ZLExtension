//
//  UIBarButtonItem+NaviItem.m
//  ZLApp
//
//  Created by MacTsin on 16/4/10.
//  Copyright © 2016年 MacTsin. All rights reserved.
//

#import "UIBarButtonItem+NaviItem.h"

@implementation UIBarButtonItem (NaviItem)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage
{
    UIButton *btn = [[UIButton alloc] init];
    
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    if (highImage) {
        [btn setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    }
//    btn.showsTouchWhenHighlighted = YES;
    btn.zl_size = btn.currentImage.size;
    
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    UIButton *btn = [[UIButton alloc] init];
    
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    if (highImage) {
        [btn setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    }
//    btn.showsTouchWhenHighlighted = YES;
    btn.zl_size = btn.currentImage.size;
    
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}
@end
