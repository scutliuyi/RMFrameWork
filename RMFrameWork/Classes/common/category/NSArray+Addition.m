//
//  NSArray+Addition.m
//  panyubao
//
//  Created by  刘一 on 16/6/6.
//  Copyright © 2016年 liuyi. All rights reserved.
//

#import "NSArray+Addition.h"

@implementation NSArray (Addition)

- (NSString *)descriptionWithLocale:(id)locale
{
    NSMutableString *strM = [NSMutableString string];
    [strM appendString:@"(\n"];
    
    for (id obj in self) {
        [strM appendFormat:@"\t%@,\n", obj];
    }
    [strM appendString:@")"];
    
    return strM;
}
@end
