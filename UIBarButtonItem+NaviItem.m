//
//  UIBarButtonItem+NaviItem.m
//  ZLApp
//
//  Created by MacTsin on 16/4/10.
//  Copyright © 2016年 MacTsin. All rights reserved.
//

#import "UIBarButtonItem+NaviItem.h"
#import "UIView+ZLExtension.h"

@implementation UIBarButtonItem (NaviItem)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage
{
    return [self itemWithImage:image highImage:highImage target:nil action:nil];
}

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    return [self itemWithImage:image highImage:highImage clickAction:^(UIButton *btn) {
        if (target) {
            [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        }
    }];
}

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage clickAction:(void (^)(UIButton *btn))clickAction {
    UIButton *btn = [[UIButton alloc] init];
    
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    if (highImage) {
        [btn setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    }
    //    btn.showsTouchWhenHighlighted = YES;
    btn.zl_size = btn.currentImage.size;
    if (btn.zl_width < 10.0) {
        btn.zl_width += 8.0;
    }
    if (clickAction) {
        clickAction(btn);
    }
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}


@end
