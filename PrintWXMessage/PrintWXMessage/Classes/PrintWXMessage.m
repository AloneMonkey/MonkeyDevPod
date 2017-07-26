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

@interface CMessageWrap
@property (nonatomic, strong) NSString* m_nsContent;
@property (nonatomic, assign) NSInteger m_uiMessageType;
@end

CHDeclareClass(CMessageMgr)

CHMethod2(void, CMessageMgr, AsyncOnAddMsg, NSString*, msg, MsgWrap, CMessageWrap*, msgWrap){
    NSString* content = [msgWrap m_nsContent];
    if([msgWrap m_uiMessageType] == 1){
        NSLog(@"收到消息: %@", content);
    }
    CHSuper2(CMessageMgr, AsyncOnAddMsg, msg, MsgWrap, msgWrap);
}

CHConstructor{
    CHLoadLateClass(CMessageMgr);
    CHClassHook2(CMessageMgr, AsyncOnAddMsg, MsgWrap);
}

