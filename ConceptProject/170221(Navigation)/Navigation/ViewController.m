//
//  ViewController.m
//  Navigation
//
//  Created by 조백진 on 2017. 2. 21..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"This is Title";
    [self.navigationController.navigationBar setBarTintColor:[UIColor lightGrayColor]];
    
    UIButton *backBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 50, 35)];
    [backBtn setImage:[UIImage imageNamed:@"forward"] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(backButton:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *bar = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    self.navigationItem.rightBarButtonItem = bar;
    
}

- (void)backButton:(UIButton *)sender{
    
    UIViewController *second = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    [self.navigationController pushViewController:second animated:YES];
    NSLog(@"forward btn선택");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
