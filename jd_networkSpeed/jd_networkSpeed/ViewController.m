//
//  ViewController.m
//  jd_networkSpeed
//
//  Created by WangJiadong on 2016/12/27.
//  Copyright © 2016年 WangJiadong. All rights reserved.
//

#import "ViewController.h"
#import "networkSpeed.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    networkSpeed *speed = [[networkSpeed alloc] init];
    
    //    [speed getInternetface];
    NSLog(@"%lld",[speed getInternetface]);
    
    //    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(getInternetface) userInfo:nil repeats:YES];
    //
    //    [timer fireDate];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
