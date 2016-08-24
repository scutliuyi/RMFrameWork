//
//  IndexBanner.m
//  ZNVAPP
//
//  Created by xiao wenping on 13-11-5.
//  Copyright (c) 2013年 Ongo. All rights reserved.
//



#import "IndexBanner.h"
#import "RMMacro.h"

@interface IndexBanner ()
{
    UIScrollView *IndexBanner_ScrollView;
    UIPageControl *IndexBanner_PageControlView;
}
@end

@implementation IndexBanner

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        self.userInteractionEnabled = YES;
        UITapGestureRecognizer *Recognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap)];
        Recognizer.numberOfTapsRequired=1;
        [self addGestureRecognizer:Recognizer];
        
    }
    return self;
}

- (id)initIndexBannerWithFrame:(CGRect)frame andImageArray:(NSArray *)imageArray
{
    self = [self initWithFrame:frame];
    if (self) {
        
    }

    //添加Scrollview
    IndexBanner_ScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    IndexBanner_ScrollView.backgroundColor = [UIColor whiteColor];
    IndexBanner_ScrollView.showsVerticalScrollIndicator = NO;
    IndexBanner_ScrollView.pagingEnabled = YES;
    //IndexBanner_ScrollView.delegate = self;
    IndexBanner_ScrollView.bounces = NO;
    
    IndexBanner_PageControlView = [[UIPageControl alloc] initWithFrame:CGRectMake(self.bounds.size.width *.5 - 100 * 0.5, self.bounds.size.height - 40, 100, 40)];
    
    IndexBanner_PageControlView.numberOfPages = imageArray.count;
    IndexBanner_PageControlView.currentPage = 1;
    
    //循环添加
    IndexBanner_ScrollView.contentSize = CGSizeMake(IndexBanner_ScrollView.frame.size.width * imageArray.count, 0);
    for(int i = 0; i < imageArray.count; i++) {
        UIImageView * imgView = [[UIImageView alloc] init];
        [imgView setFrame:CGRectMake(i * self.frame.size.width, 0, IndexBanner_ScrollView.frame.size.width, IndexBanner_ScrollView.frame.size.height)];
        imgView.image = imageArray[i];
        [imgView setContentMode:UIViewContentModeScaleToFill];
        [IndexBanner_ScrollView addSubview:imgView];
    }
    
    [self addSubview:IndexBanner_ScrollView];
    [self addSubview:IndexBanner_PageControlView];
    
    [self performSelector:@selector(switchFocusImageItems) withObject:nil afterDelay:3];
    
    
    return self;
}


//自动滚动
- (void)switchFocusImageItems
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(switchFocusImageItems) object:nil];
    
    CGFloat targetX = IndexBanner_ScrollView.contentOffset.x + IndexBanner_ScrollView.frame.size.width;
    
    [self moveToTargetPosition:targetX];
    
    [self performSelector:@selector(switchFocusImageItems) withObject:nil afterDelay:3];
}


//每隔 3 秒调用的方法。
- (void)moveToTargetPosition:(CGFloat)targetX
{
    
    if (targetX >= IndexBanner_ScrollView.contentSize.width) {
        targetX = 0.0;
    }
    
    [IndexBanner_ScrollView setContentOffset:CGPointMake(targetX, 0) animated:YES] ;
    IndexBanner_PageControlView.currentPage = (int)(IndexBanner_ScrollView.contentOffset.x / IndexBanner_ScrollView.frame.size.width);
    
}



#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    IndexBanner_PageControlView.currentPage  = (int)(scrollView.contentOffset.x / scrollView.frame.size.width);
    
}


-(void)tap
{
    [self.delegate tapIndex:(int)IndexBanner_PageControlView.currentPage];
}

-(void)dealloc {
    DLog(@"index banner 被释放");
}
@end

