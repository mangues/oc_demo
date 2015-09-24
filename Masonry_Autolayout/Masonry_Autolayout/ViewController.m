//
//  ViewController.m
//  Masonry_Autolayout
//
//  Created by TTS on 15/9/24.
//  Copyright (c) 2015年 mangues. All rights reserved.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    WS(ws);
    
    //从此以后基本可以抛弃CGRectMake了
    UIView *sv = [UIView new];
    //在做autoLayout之前 一定要先将view添加到superview上 否则会报错
    [self.view addSubview:sv];
    //mas_makeConstraints就是Masonry的autolayout添加函数 将所需的约束添加到block中行了
    [sv mas_makeConstraints:^(MASConstraintMaker *make) {
        //将sv居中(很容易理解吧?)
        make.center.equalTo(ws.view);
        //将size设置成(300,300)
        make.size.mas_equalTo(CGSizeMake(300, 300));
    }];
}


@end
