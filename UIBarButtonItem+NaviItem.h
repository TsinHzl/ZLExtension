//
//  UIBarButtonItem+NaviItem.h
//  ZLApp
//
//  Created by MacTsin on 16/4/10.
//  Copyright © 2016年 MacTsin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (NaviItem)
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage;

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;
@end
