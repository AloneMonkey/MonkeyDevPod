//  weibo: http://weibo.com/xiaoqing28
//  blog:  http://www.alonemonkey.com
//
//  MonkeyDev.m
//  MonkeyDev
//
//  Created by AloneMonkey on 2017/7/25.
//  Copyright (c) 2017年 Coder. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CaptainHook.h"

CHDeclareClass(CustomViewController)

CHOptimizedMethod(0, self, NSString*, CustomViewController,getMyName){
    return @"MonkeyDevPod";
    
}

CHConstructor{
    CHLoadLateClass(CustomViewController);
    CHClassHook(0, CustomViewController, getMyName);
}

