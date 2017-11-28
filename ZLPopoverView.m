//
//  ZLPopoverView.m
//  YunDuoYouBao
//
//  Created by MacBook on 18/11/2017.
//  Copyright © 2017 GY. All rights reserved.
//

#import "ZLPopoverView.h"
#import "ZLPOPAnimation.h"

static UIWindow *window_ = nil;
static ZLPopoverView *_instance = nil;

@interface ZLPopoverView()<NSCopying>

@end

@implementation ZLPopoverView

#pragma mark - 单例
+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[ZLPopoverView alloc] init];
    });
    return _instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}

- (id)copyWithZone:(NSZone *)zone {
    return _instance;
}

#pragma mark - 各方法


- (void)show {
    window_ = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    window_.windowLevel = UIWindowLevelNormal;
    window_.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.35];
    window_.hidden = NO;
    
    UIButton *coverBtn = [[UIButton alloc] initWithFrame:window_.bounds];
    coverBtn.backgroundColor = [UIColor clearColor];
    [coverBtn addTarget:self action:@selector(tapWindow:) forControlEvents:UIControlEventTouchUpInside];
    [window_ addSubview:coverBtn];
}
- (void)tapWindow:(UIButton *)btn {
    [self hide];
}
- (void)hide {
    window_.rootViewController = nil;
    window_.hidden = YES;
    window_ = nil;
    
}

@end
