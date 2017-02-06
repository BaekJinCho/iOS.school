//
//  ViewController.m
//  Make
//
//  Created by 조백진 on 2017. 2. 5..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//가격 버튼 프로퍼티 선언
@property UIButton* btn1;
@property UIButton* btn2;
@property UIButton* btn3;
@property UIButton* btn4;

//자동차 버튼 프로퍼티 선언
@property UIButton* btn5;
@property UIButton* btn6;
@property UIButton* btn7;
@property UIButton* btn8;

//클리어 버튼(C) 프로퍼티 선언
@property UIButton* btn9;

//UILabel에 잔액 표시해주는 프로퍼티 선언
@property NSInteger sum;

//'잔액' 표시하는 레이블 프로퍼티 선언
@property UILabel* label;

//'자동차 가격' 표시하는 레이블 프로퍼티 선언
@property UILabel* label1;
@property UILabel* label2;
@property UILabel* label3;
@property UILabel* label4;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //자판기 UIView & UIImageView만든 후 UIButton으로 바꿈
    self.btn5 = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.origin.x+60, self.view.frame.origin.y+60, 120, 170)];
    self.btn5.backgroundColor = [UIColor whiteColor];
    self.btn5.tag=1;
    self.view.backgroundColor = [UIColor blackColor];
    [self.btn5 setImage:[UIImage imageNamed:@"images.jpeg"] forState:UIControlStateNormal];
    self.btn5.layer.borderWidth = 2;
    self.btn5.layer.borderColor = [UIColor grayColor].CGColor;
    [self.btn5 addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.btn5];
    
    
    self.btn6 = [[UIButton alloc] initWithFrame:CGRectMake(_btn5.frame.origin.x+180, _btn5.frame.origin.y, 120, 170)];
    self.btn6.backgroundColor = [UIColor whiteColor];
    self.btn6.tag=2;
    [self.btn6 setImage:[UIImage imageNamed:@"imagee.jpeg"] forState:UIControlStateNormal];
    self.btn6.layer.borderWidth = 2;
    self.btn6.layer.borderColor = [UIColor grayColor].CGColor;
    [self.btn6 addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.btn6];
    
    
    self.btn7 = [[UIButton alloc] initWithFrame:CGRectMake(_btn5.frame.origin.x, _btn5.frame.size.height+100, 120, 170)];
    self.btn7.backgroundColor = [UIColor whiteColor];
    self.btn7.tag=3;
    [self.btn7 setImage:[UIImage imageNamed:@"imagess.jpg"] forState:UIControlStateNormal];
    self.btn7.layer.borderWidth = 2;
    self.btn7.layer.borderColor = [UIColor grayColor].CGColor;
    [self.btn7 addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.btn7];
    
    
    self.btn8 = [[UIButton alloc] initWithFrame:CGRectMake(_btn5.frame.origin.x+180, _btn6.frame.size.height+100, 120, 170)];
    self.btn8.backgroundColor = [UIColor whiteColor];
    self.btn8.tag=4;
    [self.btn8 setImage:[UIImage imageNamed:@"imaa.jpeg"] forState:UIControlStateNormal];
    self.btn8.layer.borderWidth = 2;
    self.btn8.layer.borderColor = [UIColor grayColor].CGColor;
    [self.btn8 addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.btn8];
    
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(_btn5.frame.origin.x, _btn7.frame.origin.y + 220, 300, 85)];
    self.label.backgroundColor = [UIColor blackColor];
    self.label.text=[NSString stringWithFormat:@"잔액 : %ld원", self.sum];
    self.label.font=[UIFont systemFontOfSize:30];
    self.label.textAlignment=NSTextAlignmentRight;
    self.label.textColor=[UIColor whiteColor];
    [self.view addSubview:self.label];
    
    
    //10000, 5000, 1000, 100이 들어갈 UIView 만들기
    UIView *carView6 = [[UIView alloc] initWithFrame:CGRectMake(_btn5.frame.origin.x, _label.frame.origin.y + 100, 300, 45)];
    carView6.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:carView6];
    
    
    //UILabel(가격표) 만들기
    self.label1 = [[UILabel alloc] initWithFrame:CGRectMake(_btn5.frame.origin.x, _btn5.frame.origin.y+165, 100, 40)];
    self.label1.text=@"11,111원";
    self.label1.textAlignment=NSTextAlignmentRight;
    self.label1.textColor = [UIColor whiteColor];
    [self.view addSubview:self.label1];
    
    
    self.label2 = [[UILabel alloc] initWithFrame:CGRectMake(_btn6.frame.origin.x, _btn6.frame.origin.y+165, 100, 40)];
    self.label2.text=@"22,222원";
    self.label2.textAlignment=NSTextAlignmentRight;
    self.label2.textColor = [UIColor whiteColor];
    [self.view addSubview:self.label2];
    
    
    self.label3 = [[UILabel alloc] initWithFrame:CGRectMake(_btn7.frame.origin.x, _btn7.frame.origin.y+165, 100, 40)];
    self.label3.text=@"33,333원";
    self.label3.textAlignment=NSTextAlignmentRight;
    self.label3.textColor = [UIColor whiteColor];
    [self.view addSubview:self.label3];
    
    
    self.label4 = [[UILabel alloc] initWithFrame:CGRectMake(_btn8.frame.origin.x, _btn8.frame.origin.y+165, 100, 40)];
    self.label4.text=@"44,444원";
    self.label4.textAlignment=NSTextAlignmentRight;
    self.label4.textColor = [UIColor whiteColor];
    [self.view addSubview:self.label4];
    
    
    //제목 만들기
    UILabel *titleLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width,40)];
    titleLab.text=@"Car Vending Machine";
    titleLab.textAlignment=NSTextAlignmentCenter;
    titleLab.font = [UIFont systemFontOfSize:32];
    titleLab.textColor = [UIColor whiteColor];
    [self.view addSubview:titleLab];
    
    
    
    //UIButton 만들기(중요!) addTarget 중요!
    self.btn1 = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.origin.x+15, 0, carView6.frame.size.width/4, carView6.frame.size.height)];
    self.btn1.tag=5;
    [self.btn1 setTitle:@"10,000원" forState:UIControlStateNormal];
    [self.btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.btn1 addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [carView6 addSubview:self.btn1];
    
    
    self.btn2 = [[UIButton alloc] initWithFrame:CGRectMake(_btn1.frame.origin.x+_btn1.frame.size.width, 0, carView6.frame.size.width/4, carView6.frame.size.height)];
    self.btn2.tag=6;
    [self.btn2 setTitle:@"5,000원" forState:UIControlStateNormal];
    [self.btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.btn2 addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [carView6 addSubview:self.btn2];
    
    
    self.btn3 = [[UIButton alloc] initWithFrame:CGRectMake(_btn2.frame.origin.x+_btn2.frame.size.width, 0, carView6.frame.size.width/4.5, carView6.frame.size.height)];
    self.btn3.tag=7;
    [self.btn3 setTitle:@"1,000원" forState:UIControlStateNormal];
    [self.btn3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.btn3 addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [carView6 addSubview:self.btn3];
    
    
    self.btn4 = [[UIButton alloc] initWithFrame:CGRectMake(_btn3.frame.origin.x+_btn3.frame.size.width, 0, carView6.frame.size.width/5.1, carView6.frame.size.height)];
    self.btn4.tag=8;
    [self.btn4 setTitle:@"100원" forState:UIControlStateNormal];
    [self.btn4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.btn4 addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [carView6 addSubview:self.btn4];
    
    
    //'잔액'을 0으로 만들어 주는 버튼 만들기
    self.btn9 = [[UIButton alloc] initWithFrame:CGRectMake(_label.frame.origin.x, _label.frame.origin.y+20, _label.frame.size.width/5, _label.frame.size.height/2)];
    self.btn9.tag=8;
    self.btn9.backgroundColor=[UIColor orangeColor];
    [self.btn9 setTitle:@"C" forState:UIControlStateNormal];
    [self.btn9 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.btn9 addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.btn9];
    
    
}
//btn을 누를 때 사용자가 클릭한 버튼과 일치하는 메소드 실행
- (void)clickBtn:(UIButton *)sender{
 //버튼 클릭할 때마다 잔액 올라가는 것
    if (sender==self.btn1) {
        self.sum += 10000;
        self.label.text = [NSString stringWithFormat:@"잔액 : %ld원",self.sum];
    }else if (sender==self.btn2){
        self.sum += 5000;
        self.label.text = [NSString stringWithFormat:@"잔액 : %ld원",self.sum];
    }else if (sender==self.btn3){
        self.sum += 1000;
        self.label.text = [NSString stringWithFormat:@"잔액 : %ld원",self.sum];
    }else if (sender==self.btn4) {
        self.sum += 100;
        self.label.text = [NSString stringWithFormat:@"잔액 : %ld원",self.sum];
    
    //그림 누를 때 마다 잔액 감소
    }else if(sender==self.btn5){
        self.sum -= 11111;
        self.label.text = [NSString stringWithFormat:@"잔액 : %ld원",self.sum];
    }else if(sender==self.btn6){
        self.sum -= 22222;
        self.label.text = [NSString stringWithFormat:@"잔액 : %ld원",self.sum];
    }else if(sender==self.btn7){
        self.sum -= 33333;
        self.label.text = [NSString stringWithFormat:@"잔액 : %ld원",self.sum];
    }else if(sender==self.btn8){
        self.sum -= 44444;
        self.label.text = [NSString stringWithFormat:@"잔액 : %ld원",self.sum];
    }else if(sender==self.btn9){
        self.sum = 0;
        self.label.text = [NSString stringWithFormat:@"잔액 : %ld원",self.sum];
    }
    NSLog(@"버튼이 눌렸습니다");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
