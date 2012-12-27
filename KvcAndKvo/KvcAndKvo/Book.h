//
//  Book.h
//  KvcAndKvo
//
//  Created by DuanShuyou on 12-12-27.
//  Copyright (c) 2012年 Big-Sea. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Author.h"
@interface Book : NSObject{
    NSString *_name;
    Author *_author;//书的作者
    NSArray *_relativeBooks; //相关书籍
}
@property(nonatomic,copy) NSString *name;

@end
