//
//  MyTabBarViewController.m
//  besttranslator
//
//  Created by wuhannewcompany on 2019/9/26.
//  Copyright © 2019 hjp. All rights reserved.
//

#import "MyTabBarViewController.h"
#import "MyTabBar.h"
#import "MyTabBarItem.h"

@interface MyTabBarViewController ()

@end

@implementation MyTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIColor *tintColor = [UIColor colorWithRed:52/255.0 green:112/255.0 blue:234/255.0 alpha:1];
    MyTabBarItem *item1 = [[MyTabBarItem alloc] initWithAttribute:@{MyTabBarItemTitle:@"item1",
                                                                    MyTabBarItemImage:[UIImage imageNamed:@"icon_translate"],
                                                                    MyTabBarItemNormalColor:[UIColor colorWithRed:110/255.0 green:110/255.0 blue:110/255.0 alpha:1],
                                                                    MyTabBarItemSeletedColor:tintColor
                                                                    }];
    MyTabBarItem *item2 = [[MyTabBarItem alloc] initWithAttribute:@{MyTabBarItemTitle:@"item2",
                                                                    MyTabBarItemImage:[UIImage imageNamed:@"icon_dictionary"],
                                                                    MyTabBarItemNormalColor:[UIColor colorWithRed:110/255.0 green:110/255.0 blue:110/255.0 alpha:1],
                                                                    MyTabBarItemSeletedColor:tintColor
                                                                    }];
    MyTabBarItem *item3 = [[MyTabBarItem alloc] initWithAttribute:@{MyTabBarItemTitle:@"item3",
                                                                    MyTabBarItemImage:[UIImage imageNamed:@"icon_setting"],
                                                                    MyTabBarItemNormalColor:[UIColor colorWithRed:110/255.0 green:110/255.0 blue:110/255.0 alpha:1],
                                                                    MyTabBarItemSeletedColor:tintColor
                                                                    }];
    MyTabBar *tabBar = [[MyTabBar alloc] initWithTabBarItems:@[item1, item2, item3]];
    [self.view addSubview:tabBar];
    self.myTabBar = tabBar;
    
    NSLog(@"%@", self.viewControllers);
    for (UIViewController *vc in self.viewControllers) {
        vc.view.backgroundColor = [UIColor colorWithRed:246/255.0 green:246/255.0 blue:246/255.0 alpha:1];
    }
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    CGRect tabBarFrame = self.tabBar.frame;
    NSLog(@"%@", NSStringFromCGRect(tabBarFrame));
    tabBarFrame.size.height += 21;
    tabBarFrame.origin.y -= 21;
    [self.myTabBar setFrame:tabBarFrame];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
