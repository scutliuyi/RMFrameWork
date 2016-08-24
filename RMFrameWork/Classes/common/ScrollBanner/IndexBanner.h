//
//  IndexBanner.h
//  ZNVAPP
//
//  Created by xiao wenping on 13-11-5.
//  Copyright (c) 2013年 Ongo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol IndexBannerDelegate <NSObject>

-(void)tapIndex:(int)index;

@end

@interface IndexBanner : UIView<UIScrollViewDelegate>


@property (nonatomic,weak) id<IndexBannerDelegate>delegate;

-(id)initIndexBannerWithFrame:(CGRect)frame andImageArray:(NSArray *)imageArray;

 
- (void)moveToTargetPosition:(CGFloat)targetX;
- (void)switchFocusImageItems;

@end
