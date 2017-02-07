//
//  ViewController.m
//  UI
//
//  Created by 조백진 on 2017. 2. 2..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 300)];
    myView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:myView];
    
    UIView *subView = [[UIView alloc] init];
    subView.frame = CGRectMake(10, 30, 50, 200);
    subView.backgroundColor=[UIColor redColor];
    [myView addSubview:subView];
    
    UIView *thirdView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, 345, 100)];
    thirdView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:thirdView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
