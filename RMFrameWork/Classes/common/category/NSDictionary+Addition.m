//
//  NSDictionary+Addition.m
//  panyubao
//
//  Created by  刘一 on 16/6/6.
//  Copyright © 2016年 liuyi. All rights reserved.
//

#import "NSDictionary+Addition.h"

@implementation NSDictionary (Addition)

- (NSString *)descriptionWithLocale:(id)locale
{
    NSMutableString *strM = [NSMutableString string];
    [strM appendString:@"{\n"];
    
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [strM appendString:[NSString stringWithFormat:@"%@ : %@\n", key, [self objectForKey:key]]];
    }];
    [strM appendString:@"}"];
    
    return strM;
}

@end
