//
//  NativeJumpController.m
//  NativeToReactNative
//
//  Created by wenzhan on 2018/8/21.
//  Copyright © 2018年 wenzhan. All rights reserved.
//

#import "NativeJumpController.h"

@interface NativeJumpController ()

@end

@implementation NativeJumpController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"我是 ReactNative 跳转来的原生页面";
    //self.view.backgroundColor = [UIColor colorWithRed:27/255 green:132/255 blue:193/255 alpha:1.0];
    
    UIImage *oneImage = [UIImage imageNamed:@"screenshot.png"]; // 使用ImageView通过name找到图片
    UIImageView *oneImageView = [[UIImageView alloc] initWithImage:oneImage]; //把oneImage添加到oneImageView上
    oneImageView.frame = CGRectMake(30, 10+100, 300, 260); // 设置图片位置和大小
    oneImageView.backgroundColor = [UIColor redColor]; // 设置背景颜色
    oneImageView.alpha = 1.0; // 设置透明度
    [self.view addSubview:oneImageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
