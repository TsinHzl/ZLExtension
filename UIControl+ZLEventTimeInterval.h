//
//  UIControl+ZLEventTimeInterval.h
//  TYWJBus
//
//  Created by Harley He on 2018/5/30.
//  Copyright © 2018 Harley He. All rights reserved.
//  这个文件主要是用于给button添加防止重复点击功能，这里应该是给UIControl写分类，因为在交换方法的时候，交换的是UIControl的sendAction方法，这样子，只要是继承自UIControl的类都会将这个方法进行替换，如果是给UIButton写分类的话，其他继承自UIControl的子类就会找不到自定义的两个时间间隔的setter和getter方法，就会crash

#import <UIKit/UIKit.h>

@interface UIControl (ZLEventTimeInterval)

/* 点击事件间隔时间 */
@property (assign, nonatomic) NSTimeInterval zl_eventTimeInterval;
/* 当前剩余时间--即是 当前时间减去第一次点击时间 */
@property (assign, nonatomic) NSTimeInterval zl_acceptTime;
@end
