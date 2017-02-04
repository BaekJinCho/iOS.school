//
//  ViewController.m
//  PracticeView
//
//  Created by 조백진 on 2017. 2. 3..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    //view 만들기 연습(각 view의 상하좌우 여백은 15, 계층 구조 3개 view 만들기)
//    UIView *firstView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, self.view.frame.size.width - 30, self.view.frame.size.height - 30)];
//    firstView.backgroundColor = [UIColor blackColor];
//    [self.view addSubview:firstView];
//    
//    UIView *secondView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, firstView.frame.size.width - 30, firstView.frame.size.height - 30)];
//    secondView.backgroundColor = [UIColor blueColor];
//    [firstView addSubview:secondView];
//    
//    UIView *thirdView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, secondView.frame.size.width - 30, secondView.frame.size.height - 30)];
//    thirdView.backgroundColor = [UIColor redColor];
//    [secondView addSubview:thirdView];
//    
//    
//    
//    
//    //view 만들기 연습2(위 64, 아래 48, 3계층)
//    UIView *fourView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
//    fourView.backgroundColor = [UIColor blackColor];
//    [self.view addSubview:fourView];
//    
//    UIView *fiveView = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height-48, self.view.frame.size.width, self.view.frame.size.height)];
//    fiveView.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:fiveView];
//    
//    //변수 만들어서 편하게 넣기 -> CGSize frameSize = self.view.frame.size;
//    
//    
//    
//    //view 만들기 연습3
//    UIView *sixView = [[UIView alloc] initWithFrame:CGRectMake((self.view.center.x)-50, (self.view.center.y)-50, 100, 100)];
//    sixView.backgroundColor = [UIColor blackColor];
//    [self.view addSubview:sixView];
//    
//    UIView *sevenView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 90, 10)];
//    sevenView.backgroundColor = [UIColor yellowColor];
//    [sixView addSubview:sevenView];
//    
//    UIView *sevenView1 = [[UIView alloc] initWithFrame:CGRectMake(sevenView.frame.size.width, sevenView.frame.size.height-10, 10, 10)];
//    sevenView1.backgroundColor = [UIColor redColor];
//    [sixView addSubview:sevenView1];
//    
    
    //view 만들기 연습 & UILabel & UIImageView 넣어보기
    UIView *titleView = [[UIView alloc] initWithFrame:CGRectMake(0, 50, self.view.frame.size.width, 80)];
    titleView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:titleView];
    
    UIImageView *titleView2 = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 60, 60)];
    titleView2.backgroundColor = [UIColor blackColor];
    titleView2.image = [UIImage imageNamed:@"jin.jpeg"];
    [titleView addSubview:titleView2];
    
    UILabel *titleView3 = [[UILabel alloc] initWithFrame:CGRectMake(80, 10, self.view.frame.size.width-90, 40)];
    //titleView3.backgroundColor = [UIColor blackColor];
    titleView3.text = @"즐거운 수업시간!";
    titleView3.font = [UIFont systemFontOfSize:14];
    titleView3.textColor = [UIColor whiteColor];
    
    
    [titleView addSubview:titleView3];
    
    UIView *titleView4 = [[UIView alloc] initWithFrame:CGRectMake(80, 60, self.view.frame.size.width-90, 10)];
    titleView4.backgroundColor = [UIColor blackColor];
    [titleView addSubview:titleView4];
    
    UIControl
    
    
    //UIButton 만들기
//    UIButton *testbtn = [UIButton buttonWithType:UI]
   
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
