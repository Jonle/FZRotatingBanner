//
//  ViewController.m
//  FZRotatingBanner
//
//  Created by Jonle on 15/12/23.
//  Copyright © 2015年 Jonle. All rights reserved.
//

#import "ViewController.h"
#import "FZRotatingBanner.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //    FZRotatingBanner * banner = [[FZRotatingBanner alloc] initRotatingBannerWithFrame:CGRectMake(0, 200, CGRectGetWidth(self.view.frame), 300) duration:3];
    
    FZRotatingBanner * banner = [[FZRotatingBanner alloc] initRotatingBannerWithFrame:CGRectMake(0, 200, CGRectGetWidth(self.view.frame), 300)];
    //图片自动播放时间间隔，duration = 0；图片不轮播
    banner.duration = 2;
    
    [self.view addSubview:banner];
    
    NSMutableArray * arr = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 5; i++) {
        
    
        [arr addObject:[NSString stringWithFormat:@"%d",i+1]];
    }
    
    //加载本地图片name
    banner.imagesNameOrUrl = arr;
    
    //隐藏页码指示器
    //    banner.hiddenPageControl = YES;
    
    //设置页码指示器的高
    //    banner.pageControlHeight = 15;
    
    //调整页码指示器的位置
//        banner.pageControlFrame = CGRectMake(0, 100, CGRectGetWidth(self.view.frame), 50);
    
    //点击图片返回索引值
    [banner clickImageWithBlock:^(NSInteger index) {
        
        NSLog(@"%zd",index);
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
