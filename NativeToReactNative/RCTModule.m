//
//  RCTModule.m
//  NativeToReactNative
//
//  Created by wenzhan on 2018/8/22.
//  Copyright © 2018年 wenzhan. All rights reserved.
//

#import "RCTModule.h"
#import "RCTBridge.h"

@implementation RCTModule

RCT_EXPORT_MODULE(RTModule)
//RN跳转原生界面
RCT_EXPORT_METHOD(RNOpenOneVC:(NSString *)msg){
    
    NSLog(@"RN传入原生界面的数据为:%@",msg);
    //主要这里必须使用主线程发送,不然有可能失效
    dispatch_async(dispatch_get_main_queue(), ^{
        [[NSNotificationCenter defaultCenter]postNotificationName:@"RNOpenOneVC" object:nil];
    });
}

@end
