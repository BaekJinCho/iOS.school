//
//  ViewController.m
//  Practice
//
//  Created by 조백진 on 2017. 2. 21..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //second 뷰로 넘어가는 버튼 만들기
    UIButton *btnToSecond = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-170, self.view.frame.size.height/2-120, 300, 200)];
    [btnToSecond setTitle:@"nextBtn" forState:UIControlStateNormal];
    [btnToSecond setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
    [btnToSecond addTarget:self action:@selector(nextBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnToSecond];
    //second 뷰로 넘어가는 버튼 위에 이미지 올리기
    UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 300, 200)];
    [img setImage:[UIImage imageNamed:@"18"]];
    [btnToSecond addSubview:img];
}

//버튼을 눌렀을 때 작동하는 메소드
#pragma -mark firstPage NextBtn
- (void)nextBtn:(UIButton *)sender{
    SecondViewController *sc = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:sc animated:YES];
    
//    SecondViewController *sc = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
//    [self.navigationController pushViewController:sc animated:YES];
//    sc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
//    sc.modalPresentationStyle = UIModalPresentationPageSheet; 이거뭐야? 무슨효과야? 질문ㄱㄱ
//    [self presentViewController:sc animated:YES completion:nil];  
    NSLog(@"다음 페이지로 넘어가는 버튼이 눌렸습니다.");
    
}
- (void)viewWillAppear:(BOOL)animated{ // Called when the view is about to made visible. Default does nothing
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES]; //첫번째 뷰의 네비게이션 바를 숨긴다.
}

- (void)viewWillDisappear:(BOOL)animated{ // Called when the view is dismissed, covered or otherwise hidden. Default does nothing
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO]; //두번째 뷰의 네비게이션 바를 다시 보여준다.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
