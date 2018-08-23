//
//  ViewController.m
//  NativeToReactNative
//
//  Created by wenzhan on 2018/8/21.
//  Copyright © 2018年 wenzhan. All rights reserved.
//

#import "ViewController.h"
#import "ReactNativeController.h"
#import "ReactView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"我是原生页面";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(30, (self.view.frame.size.height-64-50)/2, self.view.frame.size.width-60, 50);
    [button setBackgroundColor:[UIColor colorWithRed:32/255 green:173/255 blue:197/255 alpha:1.0]];
    [button setTitle:@"点击进入 ReactNative 页面" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:18];
    button.layer.cornerRadius = 4;
    button.layer.masksToBounds = YES;
    [button addTarget:self action:@selector(onPress:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void)onPress:(UIButton *)button{
    ReactNativeController * vc = [[ReactNativeController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
