//
//  ViewController.m
//  Make
//
//  Created by 조백진 on 2017. 2. 5..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //자판기 UIView & UIImageView만들기
    UIImageView *carView = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.frame.origin.x+60, self.view.frame.origin.y+60, 120, 170)];
    carView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:carView];
    self.view.backgroundColor = [UIColor blackColor];
    [carView setImage:[UIImage imageNamed:@"images.jpeg"]];
    carView.layer.borderWidth = 2;
    carView.layer.borderColor = [UIColor grayColor].CGColor;
    
    UIImageView *carView2 = [[UIImageView alloc] initWithFrame:CGRectMake(carView.frame.origin.x+180, carView.frame.origin.y, 120, 170)];
    carView2.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:carView2];
    [carView2 setImage:[UIImage imageNamed:@"imagee.jpeg"]];
    carView2.layer.borderWidth = 2;
    carView2.layer.borderColor = [UIColor grayColor].CGColor;
    
    UIImageView *carView3 = [[UIImageView alloc] initWithFrame:CGRectMake(carView.frame.origin.x, carView.frame.size.height+100, 120, 170)];
    carView3.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:carView3];
    [carView3 setImage:[UIImage imageNamed:@"imagess.jpg"]];
    carView3.layer.borderWidth = 2;
    carView3.layer.borderColor = [UIColor grayColor].CGColor;
    
    UIImageView *carView4 = [[UIImageView alloc] initWithFrame:CGRectMake(carView.frame.origin.x+180, carView2.frame.size.height+100, 120, 170)];
    carView4.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:carView4];
    [carView4 setImage:[UIImage imageNamed:@"imaa.jpeg"]];
    carView4.layer.borderWidth = 2;
    carView4.layer.borderColor = [UIColor grayColor].CGColor;
    
    UILabel *carView5 = [[UILabel alloc] initWithFrame:CGRectMake(carView.frame.origin.x, carView3.frame.origin.y + 220, 300, 85)];
    carView5.backgroundColor = [UIColor blackColor];
    carView5.text=@"잔액 : -1,000원";
    carView5.font=[UIFont systemFontOfSize:30];
    carView5.textAlignment=NSTextAlignmentRight;
    carView5.textColor=[UIColor whiteColor];
    [self.view addSubview:carView5];
    
    UIView *carView6 = [[UIView alloc] initWithFrame:CGRectMake(carView.frame.origin.x, carView5.frame.origin.y + 100, 300, 45)];
    carView6.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:carView6];
    
    
    //UILabel(가격표) 만들기
    UILabel *oneLab = [[UILabel alloc] initWithFrame:CGRectMake(carView.frame.origin.x, carView.frame.origin.y+160, 100, 40)];
    oneLab.text=@"11,111원";
    oneLab.textAlignment=NSTextAlignmentCenter;
    oneLab.textColor = [UIColor whiteColor];
    [self.view addSubview:oneLab];
    
    UILabel *twoLab = [[UILabel alloc] initWithFrame:CGRectMake(carView2.frame.origin.x, carView2.frame.origin.y+160, 100, 40)];
    twoLab.text=@"22,222원";
    twoLab.textAlignment=NSTextAlignmentCenter;
    twoLab.textColor = [UIColor whiteColor];
    [self.view addSubview:twoLab];
    
    UILabel *threeLab = [[UILabel alloc] initWithFrame:CGRectMake(carView3.frame.origin.x, carView3.frame.origin.y+160, 100, 40)];
    threeLab.text=@"33,333원";
    threeLab.textAlignment=NSTextAlignmentCenter;
    threeLab.textColor = [UIColor whiteColor];
    [self.view addSubview:threeLab];
    
    UILabel *fourLab = [[UILabel alloc] initWithFrame:CGRectMake(carView4.frame.origin.x, carView4.frame.origin.y+160, 100, 40)];
    fourLab.text=@"44,444원";
    fourLab.textAlignment=NSTextAlignmentCenter;
    fourLab.textColor = [UIColor whiteColor];
    [self.view addSubview:fourLab];
    
    UILabel *titleLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width,40)];
    titleLab.text=@"Car Vending Machine";
    titleLab.textAlignment=NSTextAlignmentCenter;
    titleLab.font = [UIFont systemFontOfSize:30];
    titleLab.textColor = [UIColor whiteColor];
    [self.view addSubview:titleLab];
    
    //UIButton 만들기(제대로 이해한 후 다시 하겠음)
//    UIButton *oneBtn = [[UIButton alloc] initWithFrame:CGRectMake(carView6.frame.origin.x, carView6.frame.origin.y, carView6.frame.size.width, carView6.frame.size.height)];
//    [oneBtn addTarget:self action:@selector(action) forControlEvents:UIControlEventTouchUpInside];
//    [oneBtn setTitle:@"1000000원" forState:UIControlStateNormal];
//    [oneBtn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
//    [oneBtn setTitle:@"테스트 완료" forState:UIControlStateHighlighted];
//    [oneBtn setTitleColor:[UIColor brownColor] forState:UIControlStateHighlighted];
//    [carView6 addSubview:oneBtn];
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
