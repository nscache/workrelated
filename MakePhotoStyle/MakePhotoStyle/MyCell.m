//
//  MyCell.m
//  MakePhotoStyle
//
//  Created by bravesoft on 12-12-10.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import "MyCell.h"

@implementation MyCell

@synthesize btn1;
@synthesize btn2;
@synthesize btn3;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
//        lab1 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, 100, 30)];
//        lab1.textAlignment = UITextAlignmentCenter;
//        lab1.textColor = [UIColor greenColor];
//        [self addSubview:lab1];
//        
//        
//        lab2 = [[UILabel alloc] initWithFrame:CGRectMake(130, 0, 100, 30)];
//        lab2.textAlignment = UITextAlignmentCenter;
//        lab2.textColor = [UIColor redColor];
//        [self addSubview:lab2];
        
       
        btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btn1 setTitle:@"btn1" forState:UIControlStateNormal];
        [btn1 setFrame:CGRectMake(20, 14, 60, 60)];
        //btn1 setTag
        [btn1 addTarget:self action:@selector(btn1Press:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn1];
        
        btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btn2 setTitle:@"btn2" forState:UIControlStateNormal];
        [btn2 setFrame:CGRectMake(120, 14, 60, 60)];
        //btn1 setTag
        [btn2 addTarget:self action:@selector(btn1Press:) forControlEvents:UIControlEventTouchUpInside];
        
        
        btn3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btn3 setTitle:@"btn3" forState:UIControlStateNormal];
        [btn3 setFrame:CGRectMake(220, 14, 60, 60)];
        //btn1 setTag
        [btn1 addTarget:self action:@selector(btn1Press:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.contentView addSubview:btn1];
        [self.contentView addSubview:btn2];
        [self.contentView addSubview:btn3];
        
        
    }
    return self;
}

-(void)setTitle:(NSString *)str_{

}

-(void)btn1Press:(UIButton *)sender{
    NSLog(@"%d",sender.tag);
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
