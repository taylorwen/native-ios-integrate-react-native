//
//  ReactNativeController.m
//  NativeToReactNative
//
//  Created by wenzhan on 2018/8/21.
//  Copyright © 2018年 wenzhan. All rights reserved.
//

#import "ReactNativeController.h"
#import "ReactView.h"
#import "NativeJumpController.h"
#import "AppDelegate.h"

@interface ReactNativeController ()

@end

@implementation ReactNativeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"我是ReactNative页面";
    
    ReactView * reactView = [[ReactView alloc] initWithFrame:CGRectMake(0,64,CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds)-64)];
    [self.view addSubview:reactView];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(doPushNotification:) name:@"RNOpenOneVC" object:nil];
}

- (void)doPushNotification:(NSNotification *)notification{
    NSLog(@"成功收到===>通知");
    
    NativeJumpController *jump = [[NativeJumpController alloc]init];
    
    AppDelegate *app = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    [app.nav pushViewController:jump animated:YES];
    
    //注意不能在这里移除通知否则pus进去后有pop失效
    
}

- (void)dealloc
{
    //[[NSNotificationCenter defaultCenter] removeObserver:nil];
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
