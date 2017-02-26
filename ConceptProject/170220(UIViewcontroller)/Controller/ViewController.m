//
//  ViewController.m
//  Controller
//
//  Created by 조백진 on 2017. 2. 20..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *nextBtn = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, 100, 50)];
    self.view.backgroundColor = [UIColor blackColor];
    [nextBtn setTitle:@"nextBtn" forState:UIControlStateNormal];
    [nextBtn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [nextBtn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:nextBtn];
}

- (void)clickBtn:(UIButton *)sender{
    /**************스토리보드 사용법*****************/
    //스토리 보드 객체 만들기
    UIStoryboard *st = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    //뷰컨트롤러 객체만들기
    FirstViewController *firstView = [st instantiateViewControllerWithIdentifier:@"FirstViewController"];
    firstView.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    /**************Xib 사용법*******************/
//    SecondViewController *sVC = [[SecondViewController alloc] init];
    //페이지 전환
    [self.navigationController pushViewController:firstView animated:YES];
    //[self.navigationController popViewControllerAenimated:YES];
    //[self presentViewController:firstView animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
