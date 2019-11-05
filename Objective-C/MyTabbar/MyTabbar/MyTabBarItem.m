//
//  MyTabBarItem.m
//  besttranslator
//
//  Created by wuhannewcompany on 2019/9/26.
//  Copyright © 2019 hjp. All rights reserved.
//

#import "MyTabBarItem.h"
#import "UIImage_tool.h"

@interface MyTabBarItem ()

@property (strong, nonatomic) NSDictionary *attr;

@end

@implementation MyTabBarItem

- (instancetype)initWithAttribute:(NSDictionary *)attr {
    if (self = [super init]) {
        self.attr = attr;
        [self config];
    }
    return self;
}

- (void)config {
    self.adjustsImageWhenHighlighted = YES;
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self setTitle:[self.attr objectForKey:MyTabBarItemTitle] forState:UIControlStateNormal];
    [self setTitleColor:[self.attr objectForKey:MyTabBarItemNormalColor] forState:UIControlStateNormal];
    [self setTitle:[self.attr objectForKey:MyTabBarItemTitle] forState:UIControlStateSelected];
    [self setTitleColor:[self.attr objectForKey:MyTabBarItemSeletedColor] forState:UIControlStateSelected];
    
    UIImage *image = [self.attr objectForKey:MyTabBarItemImage];
    UIImage *normalImage = [image imageWithColor:[self.attr objectForKey:MyTabBarItemNormalColor]];
    [self setImage:normalImage forState:UIControlStateNormal];
    UIImage *selectedImage = [image imageWithColor:[self.attr objectForKey:MyTabBarItemSeletedColor]];
    [self setImage:selectedImage forState:UIControlStateSelected];
    
    self.imageView.backgroundColor = [UIColor whiteColor];
    self.imageView.contentMode = UIViewContentModeCenter;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:12];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGSize imageViewSize = CGSizeMake(42, 42);
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height;
    CGFloat x = (width - imageViewSize.width) / 2;
    CGFloat y = 0;
    
    if (self.selected) {
        [self.imageView setFrame:CGRectMake(x, y, imageViewSize.width, imageViewSize.height)];
        self.imageView.layer.borderWidth = 4;
        self.imageView.layer.borderColor = [UIColor colorWithRed:246/255.0 green:246/255.0 blue:246/255.0 alpha:1].CGColor;
        self.imageView.layer.cornerRadius = 21;
        [self.titleLabel setFrame:CGRectMake(0, y + imageViewSize.width, width, 28)];
        [self.titleLabel setHidden:NO];
    } else {
        self.imageView.layer.borderWidth = 0;
        self.imageView.layer.borderColor = [UIColor whiteColor].CGColor;
        self.imageView.layer.cornerRadius = 0;
        [self.imageView setFrame:CGRectMake(x, y + imageViewSize.height / 2, imageViewSize.width, imageViewSize.height)];
        [self.titleLabel setFrame:CGRectMake(0, y + imageViewSize.width, width, 28)];
        [self.titleLabel setHidden:YES];
    }
}


- (void)drawRect:(CGRect)rect {
    // Drawing code
    [super drawRect:rect];
    UIColor *bgColor1 = [UIColor colorWithRed:246/255.0 green:246/255.0 blue:246/255.0 alpha:1];
    [bgColor1 set];
    UIRectFill(CGRectMake(0, 0, self.bounds.size.width, 21));
    
    UIColor *bgColor2 = [UIColor whiteColor];
    [bgColor2 set];
    UIRectFill(CGRectMake(0, 21, self.bounds.size.width, self.bounds.size.height - 21));
}

@end
