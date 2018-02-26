//
//  JDLStatusBarHUD.h
//  JDLStatusBarHUD
//
//  Created by 胜炫电子 on 2018/2/26.
//  Copyright © 2018年 BlueSkyer-25. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JDLStatusBarHUD : NSObject

/**
 定义普通信息图片

 @param message 文字
 @param image 图片
 */
+(void)showMessage:(NSString *)message image:(UIImage *)image;

/**
 显示成功信息
 @param message 文字
 */
+(void)showSuccess:(NSString *)message;

/**
 显示失败信息
 @param message 文字
 */
+(void)showError:(NSString *)message;

/**
 显示正在处理的信息
 @param message 文字
 */
+ (void)showLoading:(NSString *)message;

/**
 隐藏
 */
+(void)hide;
@end
