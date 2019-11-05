//
//  MyTabBar.h
//  besttranslator
//
//  Created by wuhannewcompany on 2019/9/26.
//  Copyright © 2019 hjp. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyTabBarItem;

NS_ASSUME_NONNULL_BEGIN

@interface MyTabBar : UIView

@property (strong, nonatomic) NSArray *tabBarItems;

- (instancetype)initWithTabBarItems:(NSArray *)tabBarItems;

- (void)tabBarSelect:(NSInteger)index;

@end

NS_ASSUME_NONNULL_END
