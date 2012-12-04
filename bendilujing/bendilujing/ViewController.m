//
//  ViewController.m
//  bendilujing
//
//  Created by bravesoft on 12-11-29.
//  Copyright (c) 2012年 bravesoft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *homeDirectory = NSHomeDirectory();
    
    NSLog(@"%@",homeDirectory);
    
    
    
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [paths objectAtIndex:0];
    NSLog(@"path:%@", path);
    
    
    
    NSArray *paths1 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString *path1 = [paths1 objectAtIndex:0];
    NSLog(@"%@", path1);
    
    
    
    NSArray *lib = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    
    NSString *libstr = [lib objectAtIndex:0];
    
    NSLog(@"%@",libstr);
    
    
    NSString *tem = NSTemporaryDirectory();

    
    NSLog(@"%@",tem);
    
    NSArray *paths11 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docDir = [paths11 objectAtIndex:0];
    if (!docDir) {
        NSLog(@"Documents 目录未找到");
    }
    NSArray *array = [[NSArray alloc] initWithObjects:@"内容",@"content",nil];
    NSString *filePath = [docDir stringByAppendingPathComponent:@"testF111ile"];
    //加了下面句话才能创建
    [array writeToFile:filePath atomically:YES];
    
    //打印目录内容
    NSString *fielePathprint = [docDir stringByAppendingPathComponent:@"testFile"];
    NSArray *fileprint = [NSArray arrayWithContentsOfFile:fielePathprint];
    NSLog(@"%@",fileprint);
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *testDirectory = [docDir stringByAppendingPathComponent:@"test189"];
    
    // 创建目录
    [fileManager createDirectoryAtPath:testDirectory withIntermediateDirectories:YES attributes:nil error:nil];
    
    
    NSString *testPath = [testDirectory stringByAppendingPathComponent:@"test00.txt"];
    NSString *testPath2 = [testDirectory stringByAppendingPathComponent:@"test22.txt"];
    NSString *testPath3 = [testDirectory stringByAppendingPathComponent:@"test33.txt"];
    
    
    NSString *string = @"写入内容，write String";
    [fileManager createFileAtPath:testPath contents:[string  dataUsingEncoding:NSUTF8StringEncoding] attributes:nil];
    [fileManager createFileAtPath:testPath2 contents:[string  dataUsingEncoding:NSUTF8StringEncoding] attributes:nil];
    [fileManager createFileAtPath:testPath3 contents:[string  dataUsingEncoding:NSUTF8StringEncoding] attributes:nil];
    
    
  //  3、获取目录列里所有文件名
   // 两种方法获取：subpathsOfDirectoryAtPath 和 subpathsAtPath
   // [cpp] view plaincopy
    NSArray *paths1212 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths1212 objectAtIndex:0];
    NSLog(@"documentsDirectory%@",documentsDirectory);
    NSFileManager *fileManage = [NSFileManager defaultManager];
    NSString *myDirectory = [documentsDirectory stringByAppendingPathComponent:@"test"];
    NSArray *file = [fileManage subpathsOfDirectoryAtPath: myDirectory error:nil];
    NSLog(@"%@",file);
    NSArray *files = [fileManage subpathsAtPath: myDirectory ];
    NSLog(@"%@",files);
    
    //具体地址:http://blog.csdn.net/totogo2010/article/details/7671144
    
    
    
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
