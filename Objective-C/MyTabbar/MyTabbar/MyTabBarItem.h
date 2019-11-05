//
//  MyTabBarItem.h
//  besttranslator
//
//  Created by wuhannewcompany on 2019/9/26.
//  Copyright © 2019 hjp. All rights reserved.
//

#import <UIKit/UIKit.h>

#define MyTabBarItemTitle @"MyTabBarItemTitleKey"
#define MyTabBarItemImage @"MyTabBarItemImageKey"
#define MyTabBarItemNormalColor @"MyTabBarItemNormalColorKey"
#define MyTabBarItemSeletedColor @"MyTabBarItemSeletedColorKey"

NS_ASSUME_NONNULL_BEGIN

@interface MyTabBarItem : UIButton

- (instancetype)initWithAttribute:(NSDictionary *)attr;

@end

NS_ASSUME_NONNULL_END
