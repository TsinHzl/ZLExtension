//
//  ZLPOPAnimation.h
//  极地TV2.0
//
//  Created by MacBook on 31/10/2017.
//  Copyright © 2017. All rights reserved.
//

#import <UIKit/UIKit.h>
@class POPSpringAnimation;

@interface ZLPOPAnimation : NSObject

#pragma mark - frame动画
/****************** frame动画 ********/
/**
 动画显示,需要动画结束时还进行一系列操作
 */

/**
 动画显示-带block

 @param view 显示的view
 @param time 时间，为0则是默认时间:0.25
 @param fromF 开始的frame
 @param toF 结束的frame
 @param completionBlock 动画结束时的block
 */
+ (void)animationWithView:(UIView *)view time:(CGFloat)time fromF:(CGRect)fromF toF:(CGRect)toF completionBlock:(void(^)())completionBlock;

/**
 动画显示-设置速度等

 @param view 显示的view
 @param time 时间，为0则是默认时间:0.25
 @param fromF 开始的frame
 @param toF 结束的frame
 @param springSpeed 弹性速度,为0则是默认值:30.0
 @param springBounciness 弹性度,为0则是默认值:10.0
 @return POPSpringAnimation
 */
+ (POPSpringAnimation *)animationWithView:(UIView *)view time:(CGFloat)time fromF:(CGRect)fromF toF:(CGRect)toF springSpeed:(CGFloat)springSpeed springBounciness:(CGFloat)springBounciness;
/**
 动画显示-设置速度等
 
 @param view 显示的view
 @param time 时间，为0则是默认时间:0.25
 @param fromF 开始的frame
 @param toF 结束的frame
 @param springSpeed 弹性速度,为0则是默认值:30.0
 @param springBounciness 弹性度,为0则是默认值:10.0
 @param completionBlock 动画结束时的block
 */
+ (void)animationWithView:(UIView *)view time:(CGFloat)time fromF:(CGRect)fromF toF:(CGRect)toF springSpeed:(CGFloat)springSpeed springBounciness:(CGFloat)springBounciness completionBlock:(void(^)())completionBlock;

/**
 动画显示
 */
+ (POPSpringAnimation *)animationWithView:(UIView *)view time:(CGFloat)time fromF:(CGRect)fromF toF:(CGRect)toF;
/**
 动画隐藏
 */
+ (void)hide:(void(^)(void))completionBlock view:(UIView *)view fromF:(CGRect)fromF toF:(CGRect)toF;
/**
 动画隐藏-不带springBounces
 */
+ (void)hideWithNoBounces:(void(^)(void))completionBlock view:(UIView *)view fromF:(CGRect)fromF toF:(CGRect)toF;
#pragma mark - center动画
/****************** center动画 ********/

/**
 动画显示-设置弹性度等

 @param view 显示的view
 @param time 显示的时间，为0则是默认值：0.25
 @param fromC 开始的center
 @param toC 结束的center
 @param springSpeed 弹性速度，为0则是默认值：30.0
 @param springBounciness 弹性度，为0则是默认值：10.0
 @return POPSpringAnimation
 */
+ (POPSpringAnimation *)animationWithView:(UIView *)view time:(CGFloat)time fromC:(CGPoint)fromC toC:(CGPoint)toC springSpeed:(CGFloat)springSpeed springBounciness:(CGFloat)springBounciness;
/**
 动画显示-设置弹性度等,带有block
 
 @param view 显示的view
 @param time 显示的时间，为0则是默认值：0.25
 @param fromC 开始的center
 @param toC 结束的center
 @param springSpeed 弹性速度，为0则是默认值：30.0
 @param springBounciness 弹性度，为0则是默认值：10.0
 @param completionBlock 动画结束时的block
 */
+ (void)animationWithView:(UIView *)view time:(CGFloat)time fromC:(CGPoint)fromC toC:(CGPoint)toC springSpeed:(CGFloat)springSpeed springBounciness:(CGFloat)springBounciness completionBlock:(void(^)(void))completionBlock;
/**
 动画显示,需要动画结束时还进行一系列操作
 */
+ (void)animationWithView:(UIView *)view time:(CGFloat)time fromC:(CGPoint)fromC toC:(CGPoint)toC completionBlock:(void(^)(void))completionBlock;
/**
 动画显示
 */
+ (POPSpringAnimation *)animationWithView:(UIView *)view time:(CGFloat)time fromC:(CGPoint)fromC toC:(CGPoint)toC;
/**
 动画隐藏-正常隐藏
 */
+ (void)hide:(void(^)(void))completionBlock view:(UIView *)view fromC:(CGPoint)fromC toC:(CGPoint)toC;
/**
 动画隐藏-不带springBounces
 */
+ (void)hideWithNoBounces:(void(^)(void))completionBlock view:(UIView *)view fromC:(CGPoint)fromC toC:(CGPoint)toC;

@end
