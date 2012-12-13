//
//  ImageAndTitle.h
//  MakePhotoStyle
//
//  Created by bravesoft on 12-12-11.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ImageAndTitle : NSObject
{
    NSString *Image;
    NSString *Title;
    
}

- (id)InitWithImage:(NSString *)image_ andTitle:(NSString *)title_;
@property(nonatomic,retain)NSString *Image;
@property(nonatomic,retain)NSString *Title;
@end
