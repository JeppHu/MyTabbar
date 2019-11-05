//
//  MyTabBar.m
//  besttranslator
//
//  Created by wuhannewcompany on 2019/9/26.
//  Copyright © 2019 hjp. All rights reserved.
//

#import "MyTabBar.h"
#import "MyTabBarItem.h"

@interface MyTabBar ()

@property (assign, nonatomic) NSInteger index;

@property (strong, nonatomic) MyTabBarItem *currentItem;

@end

@implementation MyTabBar

- (instancetype)initWithTabBarItems:(NSArray *)tabBarItems {
    if (self = [super init]) {
        self.index = 0;
        self.tabBarItems = tabBarItems;
        
        for (MyTabBarItem *item in tabBarItems) {
            [item addTarget:self action:@selector(tabBarItemSelect:) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:item];
        }
        self.currentItem = tabBarItems[0];
        [self.currentItem setSelected:YES];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height;
    CGFloat buttonWidth = width / self.tabBarItems.count;
    for (int i = 0; i < self.tabBarItems.count; i++) {
        MyTabBarItem *item = self.tabBarItems[i];
        item.tag = i;
        CGRect frame = CGRectMake(i*buttonWidth, 0, buttonWidth, height);
        [item setFrame:frame];
    }
}

- (void)tabBarSelect:(NSInteger)index {
    if (self.tabBarItems.count < index) {
        return;
    }
    MyTabBarItem *item = self.tabBarItems[index];
    self.currentItem.selected = NO;
    item.selected = YES;
    self.currentItem = item;
    
    [self setSelectedIndex:index];
}

- (void)tabBarItemSelect:(MyTabBarItem *)sender {
    self.currentItem.selected = NO;
    sender.selected = YES;
    self.currentItem = sender;
    
    [self setSelectedIndex:sender.tag];
}

- (void)setSelectedIndex:(NSInteger)index {
    UIWindow *window = self.window;
    UITabBarController *tabBarController = (UITabBarController *)window.rootViewController;
    if (index < self.tabBarItems.count && tabBarController != nil) {
        tabBarController.selectedIndex = index;
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
