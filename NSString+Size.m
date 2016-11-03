//
//  NSString+Size.m
//  ZLApp
//
//  Created by MacTsin on 16/4/9.
//  Copyright © 2016年 MacTsin. All rights reserved.
//

#import "NSString+Size.h"

@implementation NSString (Size)

- (CGSize)sizeWithMaxSize:(CGSize)maxSize font:(CGFloat )font
{
    NSMutableDictionary *attrsDic = [NSMutableDictionary dictionary];
    attrsDic[NSFontAttributeName] = [UIFont systemFontOfSize:font];
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrsDic context:nil].size;
}

+ (NSString *)cachePathWithFileName:(NSString *)filename
{
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
    path = [path stringByAppendingPathComponent:filename];
    NSLog(@"路径---%@",path);
    return path;
}
@end
