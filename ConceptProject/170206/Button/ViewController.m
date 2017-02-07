//
//  ViewController.m
//  Button
//
//  Created by 조백진 on 2017. 2. 6..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>

//텍스트 필드 변수 선언
@property UITextField* tf;
@property UITextField* tf2;

//버튼 변수 선언
@property UIButton* btn1;
@property UIButton* btn2;
//버튼이 클릭되었을 때 그 색을 저장해주는 프로퍼티 선언
@property UIButton* beforeBtnColor;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    
    //UITextField 만들어 보기
    self.tf = [[UITextField alloc] initWithFrame:CGRectMake(100, 360, 180, 35)];
    self.tf.borderStyle = UITextBorderStyleBezel;
    self.tf.placeholder = @"여기에 입력해";
    self.tf.tag = 100;
    self.tf.delegate = self; //델리게이트
    [self.view addSubview:self.tf];

    
    self.tf2 = [[UITextField alloc] initWithFrame:CGRectMake(100, 410, 180, 35)];
    self.tf2.borderStyle = UITextBorderStyleBezel;
    self.tf2.placeholder = @"여기는 결과값!";
    self.tf2.tag = 200;
    self.tf2.delegate = self; //델리게이트
    [self.view addSubview:self.tf2];
    
    UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake(300, 360, 50, 80)];
    btn1.tag=300;
    [btn1 setTitle:@"확인" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(pushBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    
    
    
    
    
    
    //UIButton 들어갈 UIView 만들기
    UIView *buttonBox = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/9, self.view.frame.size.height/6, self.view.frame.size.width/3, self.view.frame.size.height/6)];
    buttonBox.backgroundColor = [UIColor blueColor];
    [self.view addSubview:buttonBox];
                         
    
    //UIButton 들어갈 UIButton 만들기
    self.btn1 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, buttonBox.frame.size.width, buttonBox.frame.size.height)];
    
    [self.btn1 setTitle:@"1번 버튼" forState:UIControlStateNormal];
    [self.btn1 setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
    [self.btn1 setTitleColor:[UIColor whiteColor]forState:UIControlStateSelected];
    [self.btn1 addTarget:self action:@selector(selected:) forControlEvents:UIControlEventTouchUpInside];
    [buttonBox addSubview:self.btn1];
    
    
    //UIView2 만들기
    UIView *buttonBox2 = [[UIView alloc] initWithFrame:CGRectMake(buttonBox.frame.size.width*1.7, buttonBox.frame.origin.y, self.view.frame.size.width/3, self.view.frame.size.height/6)];
    buttonBox2.backgroundColor = [UIColor blueColor];
    [self.view addSubview:buttonBox2];
    
    
    //UIButton2 만들기
    self.btn2 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, buttonBox.frame.size.width, buttonBox.frame.size.height)];
    [self.btn2 setTitle:@"2번 버튼" forState:UIControlStateNormal];
    [self.btn2 setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
    [self.btn2 setTitleColor:[UIColor whiteColor]forState:UIControlStateSelected];
    [self.btn2 addTarget:self action:@selector(selected:) forControlEvents:UIControlEventTouchUpInside];
    [buttonBox2 addSubview:self.btn2];
    
    

}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSLog(@"%lu", textField.tag);
    [self.tf resignFirstResponder];
    self.tf2.placeholder = self.tf.text; //tf2에 tf가 입력한 텍스트 출력
    return YES;
}

-(void)pushBtn:(UIButton *)sender{
    
    self.tf2.placeholder = self.tf.text; //확인 버튼 눌렀을 때, tf2에 tf가 입력한 텍스트 출력
    NSLog(@"확인 키가 눌렸습니다.");
}



- (void)selected:(UIButton *)sender{
    [sender setSelected:YES];// 버튼 눌린거 켜기
    [self.beforeBtnColor setSelected:NO]; //한 번 돌고 그 다음 실행되는 전 이전 selected 값 꺼주기
    self.beforeBtnColor = sender; //버튼 킨 것 저장하기
//    if (sender==_btn2) {
//        [sender setSelected:NO];
//    }

    NSLog(@"버튼이 눌렸습니다.");


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
;
