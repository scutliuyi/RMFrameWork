//
//  RMMacro.h
//  panyubao
//
//  Created by  刘一 on 16/3/15.
//  Copyright © 2016年 liuyi. All rights reserved.
//

#ifndef RMMacro_h
#define RMMacro_h

/* 当前屏幕宽度 */
#define ScreenWidth [UIScreen mainScreen].bounds.size.width
/* 当前屏幕高度 */
#define ScreenHeight [UIScreen mainScreen].bounds.size.height
/* 当前视图宽度 */
#define ViewWidth self.view.bounds.size.width
/** 当前视图高度 */
#define ViewHeight self.view.bounds.size.height

#pragma mark - 自定义颜色
/* 十六进制颜色 */
#define UIColorFromHex(HexColor) [UIColor colorWithRed:((float)((HexColor & 0xFF0000) >> 16))/255.0 green:((float)((HexColor & 0xFF00) >> 8))/255.0 blue:((float)(HexColor & 0xFF))/255.0 alpha:1.0]
/* 十六进制颜色带透明度 */
#define UIColorFromHexA(HexColor,A) [UIColor colorWithRed:((float)((HexColor & 0xFF0000) >> 16))/255.0 green:((float)((HexColor & 0xFF00) >> 8))/255.0 blue:((float)(HexColor & 0xFF))/255.0 alpha:A]
/* 十进制颜色 */
#define UIColorFromRGB(R,G,B) [UIColor colorWithRed:(R/255.0) green:(G/255.0) blue:(B/255.0) alpha:1.0]
/* 十进制颜色带透明度 */
#define UIColorFromRGBA(R,G,B,A) [UIColor colorWithRed:(R/255.0) green:(G/255.0) blue:(B/255.0) alpha:A]


#pragma mark - 样式定义
/* 左边留白 */
#define leftspacing  30
/* 右边留白 */
#define rightspacing -30
/* button高度 */
#define buttonHeight 40

/* 页面背景色 */
#define StyleColorBg UIColorFromHex(0xf3f3f3)
/* 导航条颜色 */
#define StyleColorNavigation UIColorFromHex(0xff9800)
/* 按钮颜色 */
#define StyleColorButton UIColorFromHex(0xff9800)
/* 标准蓝色 */
#define StyleColorBlue UIColorFromHex(0xff9800)
/* 灰色字 */
#define StyleColorGray UIColorFromHex(0x999999)


/* 导航栏主标题字体 */
#define StyleFontTitle [UIFont boldSystemFontOfSize:18.0]
/* 导航栏副标题字体 */
#define StyleFontSubTitle [UIFont systmeFontOfSize:15.0]
/* 标准字体 */
#define StyleFontStandard [UIFont systemFontOfSize:16.0]
/* 小字体 */
#define StyleFontSmall [UIFont systemFontOfSize:14.0]
/* 细小字体 */
#define StyleFontWeak [UIFont systemFontOfSize:12.0]
/* 输入框提示字体 */
#define StyleFontTips [UIFont systemFontOfSize:16.0]
/* 主按钮字体 */
#define StyleFontButton [UIFont systemFontOfSize:16.0]
/* 整体布局左右的间距、两个输入框之间的间距、按钮与按钮或其他空间之间的间距都统一 */
#define StyleSpacingSize 22.0

#pragma mark - 调试用
/* 打印日止，输出当前行数 */
#ifdef DEBUG
#   define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#   define DLog(...)
#endif

/* 弹出一个警告框 */
#ifdef DEBUG
#   define ULog(fmt, ...)  { UIAlertView *alert = [[UIAlertView alloc]\
initWithTitle:[NSString stringWithFormat:@"%s\n [Line %d] ", __PRETTY_FUNCTION__, __LINE__] essage:[NSString stringWithFormat:fmt, ##__VA_ARGS__]  delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil]; [alert show]; }
#else
#   define ULog(...)
#endif

#endif /* RMMacro_h */


