//
//  MSZXEncrypt.h
//  MSZX
//
//  Created by Apple on 14-10-27.
//  Copyright (c) 2014年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSZXEncrypt : NSObject

+(id)sharedInstance;
/*
 *
 *@param  data  需要加密的字符串
 *@param  firstKey,secondKey,thirdKey 加密时需要的三个参数
 *@return 返回加密后的密文
 *
 */
-(NSString *)strEnc:(NSString *)data andfirstKey:(NSString *)firstKey andsecondKey:(NSString *)secondKey andthirdKey:(NSString *)thirdKey;

@end
