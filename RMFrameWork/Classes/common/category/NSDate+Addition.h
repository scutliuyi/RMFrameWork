//
//  NSDate+Addition.h
//  panyubao
//
//  Created by  刘一 on 16/5/27.
//  Copyright © 2016年 liuyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Addition)

+ (NSString *)getCurDate;
+ (NSString*)getWeekFromDateStr:(NSString *)dateStr;
+ (NSString*)formatTime :(NSString*)str;
@end
