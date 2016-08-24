//
//  FireflySystemInfo.h
//  Firefly
//
//  Created by wenyanjie on 14-3-24.
//  Copyright (c) 2014年 wenyanjie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RMSystemInfo : NSObject

#define IOS9_OR_LATER		( [[[UIDevice currentDevice] systemVersion] compare:@"9.0"] != NSOrderedAscending )
#define IOS8_OR_LATER		( [[[UIDevice currentDevice] systemVersion] compare:@"8.0"] != NSOrderedAscending )
#define IOS7_OR_LATER		( [[[UIDevice currentDevice] systemVersion] compare:@"7.0"] != NSOrderedAscending )
#define IOS6_OR_LATER		( [[[UIDevice currentDevice] systemVersion] compare:@"6.0"] != NSOrderedAscending )
#define IOS5_OR_LATER		( [[[UIDevice currentDevice] systemVersion] compare:@"5.0"] != NSOrderedAscending )
#define IOS4_OR_LATER		( [[[UIDevice currentDevice] systemVersion] compare:@"4.0"] != NSOrderedAscending )
#define IOS3_OR_LATER		( [[[UIDevice currentDevice] systemVersion] compare:@"3.0"] != NSOrderedAscending )

#define IOS8_EARLIER		( !IOS8_OR_LATER )
#define IOS7_EARLIER		( !IOS8_OR_LATER )
#define IOS6_EARLIER		( !IOS7_OR_LATER )
#define IOS5_EARLIER		( !IOS6_OR_LATER )
#define IOS4_EARLIER		( !IOS5_OR_LATER )
#define IOS3_EARLIER		( !IOS4_OR_LATER )

/**
 *  获取设备标识符
 *
 *  @return 设备标示符
 */
+ (NSString *)deviceIdentifier;

/**
 *  获取iOS系统版本号
 *
 *  @return iOS系统版本号
 */
+ (NSString *)iOSVersion;

/**
 *  获取应用版本号
 *
 *  @return 应用版本号
 */
+ (NSString *)appVersion;

/**
 *  获取应用标识符
 *
 *  @return 应用标识符
 */
+ (NSString *)appIdentifier;

/**
 *  获取手机操作系统类型
 *
 *  @return 手机操作系统类型
 */
+ (NSString *)osType;

@end
