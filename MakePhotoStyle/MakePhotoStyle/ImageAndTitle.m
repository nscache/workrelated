//
//  ImageAndTitle.m
//  MakePhotoStyle
//
//  Created by bravesoft on 12-12-11.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import "ImageAndTitle.h"

@implementation ImageAndTitle

- (id)InitWithImage:(NSString *)image_ andTitle:(NSString *)title_{
    if (self = [super init]) {
        Image = [[NSString alloc] initWithString:image_];
        Title = [[NSString alloc] initWithString:title_];
    }
    return self;
}
//有成员变量的这种@synthesize的时候不会出现_xxx,而不是成员变量property过后，再合成的时候用= 会有_xxx出来。
@synthesize Image;
@synthesize Title;
@end