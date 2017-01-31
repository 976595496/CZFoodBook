//
//  CZTabBar.m
//  GourmetRecipes
//
//  Created by tarena on 16/4/20.
//  Copyright © 2016年 zcz. All rights reserved.
//

#import "CZTabBar.h"

@interface CZTabBar ()
/** 按钮 */
@property(nonatomic ,strong)UIButton *searchBtn;

@end

@implementation CZTabBar

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.searchBtn = [[UIButton alloc]init];
//        [self.searchBtn setBackgroundImage:[UIImage imageNamed:@"star"] forState:UIControlStateNormal];
//        [self.searchBtn setBackgroundImage:[UIImage imageNamed:@"stop"] forState:UIControlStateHighlighted];
        [self.searchBtn setImage:[UIImage imageNamed:@"sousuo"] forState:UIControlStateNormal];
        [self.searchBtn setImage:[UIImage imageNamed:@"sousuo_h"] forState:UIControlStateHighlighted];
        
        self.searchBtn.frame = CGRectMake(0, 0, self.searchBtn.currentBackgroundImage.size.width, self.searchBtn.currentBackgroundImage.size.height);
        [self.searchBtn addTarget:self action:@selector(searchBtnClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.searchBtn];
       

        
    }
    
    
    return self;
}
/**
 *  搜索按钮点击
 */
- (void)searchBtnClick{
    if ([self.tabDelegate respondsToSelector:@selector(tabBarDidClickSearchButton:)]) {
        [self.tabDelegate tabBarDidClickSearchButton:self];
        
    }
    
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    // 设置加号按钮的位置
    self.searchBtn.frame = CGRectMake(0, 0, self.frame.size.width / 3, self.frame.size.height);
    self.searchBtn.center = CGPointMake(self.frame.size.width*0.5, self.frame.size.height*0.5);
    
    // 设置其他tabbarButton的frame
    CGFloat tabBarButtonW = self.frame.size.width / 3;
    CGFloat tabBarButtonIndex = 0;
    for (UIView *child in self.subviews) {
        Class class = NSClassFromString(@"UITabBarButton");
        if ([child isKindOfClass:class]) {
            // 设置x
            CGRect rect = child.frame;
            rect.origin.x = tabBarButtonIndex * tabBarButtonW;
            //设置宽
            rect.size.width = tabBarButtonW;
            child.frame = rect;
            // 增加索引
            tabBarButtonIndex++;
            if (tabBarButtonIndex == 1) {
                tabBarButtonIndex++;
            }
        }
    }
}
















@end
