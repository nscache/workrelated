//
//  MyCell.h
//  MakePhotoStyle
//
//  Created by bravesoft on 12-12-10.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCell : UITableViewCell
{

    
}

@property(nonatomic,retain)NSString *lab1str_;
@property(nonatomic,retain)NSString *lab2str_;
@property(nonatomic,strong)UILabel *lab1;
@property(nonatomic,strong)UIButton *btn1;
@property(nonatomic,strong)UIButton *btn2;
@property(nonatomic,strong)UIButton *btn3;


-(void)setTitle:(NSString *)str_;
@end
