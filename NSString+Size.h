//
//  NSString+Size.h
//  ZLApp
//
//  Created by MacTsin on 16/4/9.
//  Copyright © 2016年 MacTsin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (Size)

/**
 获取固定文字字体大小的对应的size
 */
- (CGSize)sizeWithMaxSize:(CGSize)maxSize font:(CGFloat )font;
/**
 文字添加中划线
 */
- (NSMutableAttributedString *)crossLine;

/**
 文字添加下划线
 */
- (NSMutableAttributedString *)underLine;

/**
 设置cache的路径和名字
 */
+ (NSString *)cachePathWithFileName:(NSString *)filename;


@end
