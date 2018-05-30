//
//  UIButton+ZLEventTimeInterval.m
//  TYWJBus
//
//  Created by Harley He on 2018/5/30.
//  Copyright © 2018 Harley He. All rights reserved.
//

#import "UIControl+ZLEventTimeInterval.h"
#import <objc/runtime.h>

static char * const ZLEventTimeIntervalKey = "ZLEventTimeIntervalKey";
static char * const ZLAcceptEventTimeKey = "ZLAcceptEventTimeKey";

@implementation UIControl (ZLEventTimeInterval)

- (NSTimeInterval)zl_eventTimeInterval {
    return [objc_getAssociatedObject(self, ZLEventTimeIntervalKey) doubleValue];
}

- (void)setZl_eventTimeInterval:(CGFloat)zl_eventTimeInterval {
    objc_setAssociatedObject(self, ZLEventTimeIntervalKey, @(zl_eventTimeInterval), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSTimeInterval)zl_acceptTime {
    return [objc_getAssociatedObject(self, ZLAcceptEventTimeKey) doubleValue];
}

- (void)setZl_acceptTime:(NSTimeInterval)zl_acceptTime {
    objc_setAssociatedObject(self, ZLAcceptEventTimeKey, @(zl_acceptTime), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
#pragma mark - 交换方法，实现点击阻止功能
+ (void)load {
    Method originalMethod = class_getInstanceMethod(self, @selector(sendAction:to:forEvent:));
    Method newMethod = class_getInstanceMethod(self, @selector(zl_sendAction:to:forEvent:));
    method_exchangeImplementations(originalMethod, newMethod);
    
}

#pragma mark - 自定义点击方法
- (void)zl_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
    //有点儿不懂这段代码
    CGFloat accTime = self.zl_acceptTime;
    ZLLog(@"%f",accTime);
    if ([NSDate date].timeIntervalSince1970 - self.zl_acceptTime < self.zl_eventTimeInterval) {
        return;
    }
    
    if (self.zl_eventTimeInterval > 0) {
        self.zl_acceptTime = [NSDate date].timeIntervalSince1970;
    }
    
    [self zl_sendAction:action to:target forEvent:event];
}
@end
