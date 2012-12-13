//
//  ViewController.m
//  MakePhotoStyle
//
//  Created by bravesoft on 12-12-10.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import "ViewController.h"
#import "MyCell.h"
#import "ImageAndTitle.h"
@interface ViewController ()
{
    NSArray *dataArray;
}
@end

@implementation ViewController
- (void)dealloc{
    [super dealloc];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    ImageAndTitle *objc = [[ImageAndTitle alloc] init];
    [objc InitWithImage:@"123" andTitle:@"321"];
    NSLog(@"%@,%@",objc.Image,objc.Title);
    [objc release];

    self.view.backgroundColor = [UIColor lightGrayColor];
    
    //add数据源
    dataArray = [[NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5", @"6",@"7",@"8",@"9",@"10",nil] retain];
    
    UITableView *tbv = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 480) style:UITableViewStylePlain];

    tbv.dataSource = self;
    tbv.delegate = self;
    [self.view addSubview:tbv];
    
    
}
//提前来判断屏幕的朝向来
- (UITableViewCell *)setCellItem:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *idf = @"MyCell";
    MyCell *cell = [tableView dequeueReusableCellWithIdentifier:idf];
    if (nil == cell) {
        cell = [[[MyCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idf] autorelease];//使用定制类的时候记得添加autorelease.
    }
    
    if (indexPath.row * 3<= dataArray.count-1)
    {
        
        NSString *str1 = [NSString stringWithFormat:@"%d",indexPath.row *3 +1];
        cell.btn1.titleLabel.text = str1;
        cell.btn1.tag = indexPath.row *3 +1;
    }
    if (indexPath.row * 3+1<= dataArray.count-1) {
        
        NSString *str1 = [NSString stringWithFormat:@"%d",indexPath.row *3 +2];
        cell.btn2.titleLabel.text = str1;
        cell.btn2.tag = indexPath.row *3 +2;
    }
    if (indexPath.row * 3+2<= dataArray.count-1) {
        
        NSString *str1 = [NSString stringWithFormat:@"%d",indexPath.row *3 +3];
        cell.btn3.titleLabel.text = str1;
        cell.btn3.tag = indexPath.row *3 +3;
    }
    
    
    
    return cell;

}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [self setCellItem:tableView cellForRowAtIndexPath:indexPath];

    }

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    return dataArray.count/3 +1;
    return 100;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 88;
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
