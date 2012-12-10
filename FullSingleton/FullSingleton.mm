//
//  FullSingleton.mm
//  HungryBear
//
//  Created by Bruce Yang on 12-2-23.
//  Copyright (c) 2012年 EricGameStudio. All rights reserved.
//

#import "FullSingleton.h"

static FullSingleton * instance = nil;

@interface FullSingleton(privateMethods)

-(void) realRelease;

@end


@implementation FullSingleton

// 获取单例~
+(FullSingleton*) getInstance {
    @synchronized(self) {
        if (instance == nil) {
            [[self alloc] init];
        }
    }
    return instance;
}

// 唯一一次 alloc 单例，之后均返回 nil~
+(id) allocWithZone:(NSZone *)zone {
    @synchronized(self) {
        if (instance == nil) {
            instance = [super allocWithZone:zone];
            return instance;
        }
    }
    return nil;
}

// copy 返回单例本身~
-(id) copyWithZone:(NSZone *)zone {
    return self;
}

// retain 返回单例本身~
-(id) retain {
    return self;
}

// 引用计数总是为 1~
-(NSUInteger) retainCount {
    return 1;
}

// release 不做任何处理~
-(oneway void) release {
    
}

// autorelease 返回单例本身~
-(id) autorelease {
    return self;
}

// 真 release 私有接口~
-(void) realRelease {
    [super release];
}

//
-(void) dealloc {
    printf("举例:在此处做一些单例结束时的收尾处理/n"); 
    [super dealloc];
}

@end

// 程序结束时析构静态 c++ 类对象 garbo，在 Garbo 类的析构函数中释放 instance~
struct Garbo {
    ~Garbo(){
        [instance realRelease];
    }
};
static Garbo garbo;
