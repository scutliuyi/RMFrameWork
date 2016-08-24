//
//  NSDate+Addition.m
//  panyubao
//
//  Created by  刘一 on 16/5/27.
//  Copyright © 2016年 liuyi. All rights reserved.
//

#import "NSDate+Addition.h"

@implementation NSDate (Addition)

+ (NSString *)getCurDate {
    NSDate *currentDate = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyyMMdd"];
    NSString *dateStr = [dateFormatter stringFromDate:currentDate];
    return dateStr;
}

+ (NSString*)getWeekFromDateStr:(NSString *)dateStr {
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"yyyyMMdd"];
    NSDate *date = [format dateFromString:dateStr];
    NSArray *weekdays = @[@"星期一", @"星期二", @"星期三", @"星期四", @"星期五", @"星期六", @"星期天"];
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    calendar.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];
    NSTimeZone *timeZone = [[NSTimeZone alloc] initWithName:@"Asia/Shanghai"];
    [calendar setTimeZone: timeZone];
    NSCalendarUnit calendarUnit = NSCalendarUnitWeekday;
    NSDateComponents *theComponents = [calendar components:calendarUnit fromDate:date];
    
    return [weekdays objectAtIndex:(theComponents.weekday + 5) % 7];
}

+ (NSString*)formatTime :(NSString*)str {
    NSRange range1 = NSMakeRange(0, 2);
    NSRange range2 = NSMakeRange(2, 2);
    NSRange range3 = NSMakeRange(4, 2);
    
    return [NSString stringWithFormat:@"%@:%@:%@", [str substringWithRange:range1], [str substringWithRange:range2], [str substringWithRange:range3]];

}
@end
