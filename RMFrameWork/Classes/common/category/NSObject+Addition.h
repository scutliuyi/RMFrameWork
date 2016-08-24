//
//  NSObject+Addition.h
//  FireflyFramework
//
//  Created by yujinyu on 15/6/9.
//  Copyright (c) 2015年 cmbc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Addition)

/**
 *   该类的所有属性 不上溯到 父类
 *
 *  @return 对象所有属性
 */
+ (NSDictionary*)getPropertys;


/**
 *  获取自身的属性 是否获取父类
 *
 *  @param proNames   属性名称
 *  @param proTypes   属性类型
 *  @param isGetSuper 是否获取父类的 属性和类型
 */
+ (void)getSelfPropertys:(NSMutableArray *)proNames protypes:(NSMutableArray *)proTypes isGetSuper:(BOOL)isGetSuper;


@end
