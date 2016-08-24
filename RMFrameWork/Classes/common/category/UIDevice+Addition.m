//
//  UIDevice+Addition.m
//  FireflyFramework
//
//  Created by wenyanjie on 14-11-21.
//  Copyright (c) 2014年 wenyanjie. All rights reserved.
//

#import "UIDevice+Addition.h"
#import <AdSupport/AdSupport.h>
#import "RMSystemInfo.h"
#import "OpenUDID.h"

@implementation UIDevice (Addition)

- (NSString *)deviceIdentifier
{
    NSString *identify =nil;
//    if (IOS6_OR_LATER)
//    {
//        identify= [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
//    }
//    else
//    {
//        identify = [OpenUDID value];
//    }
    identify = [OpenUDID value];
    return identify;
}

@end
