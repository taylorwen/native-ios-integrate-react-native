//
//  ReactView.m
//  NativeToReactNative
//
//  Created by wenzhan on 2018/8/21.
//  Copyright © 2018年 wenzhan. All rights reserved.
//

#import "ReactView.h"
#import <React/RCTRootView.h>
@implementation ReactView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        NSString * strUrl = @"http://localhost:8081/index.ios.bundle?platform=ios&dev=true";
        NSURL * jsCodeLocation = [NSURL URLWithString:strUrl];
        // 这里的moduleName一定要和下面的index.ios.js里面的注册一样
        RCTRootView * rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation moduleName:@"NativeToReactNative" initialProperties:nil launchOptions:nil];
        
        [self addSubview:rootView];
        
        rootView.frame = self.bounds;
    }
    return self;
}
@end
