//
//  SecondViewController.m
//  Navigation
//
//  Created by 조백진 on 2017. 2. 21..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"This is Second Title";
    [self.navigationController.navigationBar setBarTintColor:[UIColor lightGrayColor]];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(150, 150, 100, 50)];
    [btn setTitle:@"backBtn" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    //[backBtn setImage:[UIImage imageNamed:@"3"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(backButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
//    UIBarButtonItem *bar = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
//    self.navigationItem.leftBarButtonItem = bar;
    
    
}

- (void)backButton:(UIButton *)sender{
    [self.navigationController popViewControllerAnimated:YES];
    NSLog(@"bacBtn이 선택되었습니다.");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
