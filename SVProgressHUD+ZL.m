//
//  SVProgressHUD+ZL.m
//  YunDuoYouBao
//
//  Created by MacBook on 18/11/2017.
//  Copyright © 2017 GY. All rights reserved.
//

#import "SVProgressHUD+ZL.h"

static CGFloat const ZLMinimumTimeInterval = 1.0;

@implementation SVProgressHUD (ZL)

+ (void)zl_showSuccessWithStatus:(NSString *)status {
    [SVProgressHUD setMinimumDismissTimeInterval:ZLMinimumTimeInterval];
    [SVProgressHUD showSuccessWithStatus:status];
}

+ (void)zl_showErrorWithStatus:(NSString *)status {
    [SVProgressHUD setMinimumDismissTimeInterval:ZLMinimumTimeInterval];
    [SVProgressHUD showErrorWithStatus:status];
}
@end
