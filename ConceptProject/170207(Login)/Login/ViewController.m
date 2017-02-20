//
//  ViewController.m
//  Login
//
//  Created by 조백진 on 2017. 2. 7..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
<UIScrollViewDelegate, UITextFieldDelegate>
@property UITextField *tf;
@property UITextField *tf2;

@property UIScrollView *sc;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //로그인 페이지 만들기 변수
    CGSize frameSize = self.view.frame.size;
    
    //login text 타이틀 출력하는 label
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frameSize.width, (frameSize.height/3))];
    title.text = @"Login Page";
    title.textColor = [UIColor blackColor];
    title.font = [UIFont systemFontOfSize:50];
    title.textAlignment = NSTextAlignmentCenter;
    //title.backgroundColor = [UIColor colorWithRed: 37/255.0 green: 150/255.0 blue: 204/255.0 alpha:0.7];
    [self.view addSubview:title];
    
    //Login Page UIScrollView
    self.sc = [[UIScrollView alloc] initWithFrame:CGRectMake(0, title.frame.size.height, frameSize.width, frameSize.height/2)];
    //ContentView 만들기
    [self.sc setContentSize:CGSizeMake(frameSize.width, frameSize.height)];
    self.sc.delegate = self;
    [self.view addSubview:self.sc];
    
    //ContentView
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.sc.frame.size.width, self.sc.frame.size.height*2)];
    [self.sc addSubview:contentView];
    //[contentView setBackgroundColor:[UIColor orangeColor]];
    
    //Id를 만드는 textField
    self.tf = [[UITextField alloc] initWithFrame:CGRectMake(contentView.frame.size.width/4,(contentView.frame.size.width/2)-100,self.view.frame.size.width*55/100,35)];
    self.tf.borderStyle = UITextBorderStyleBezel;
    self.tf.placeholder = @"ID";
    self.tf.tag = 100;
    self.tf.delegate = self; //델리게이트
    [contentView addSubview:self.tf];
    
    //Pw를 만드는 textField
    self.tf2 = [[UITextField alloc] initWithFrame:CGRectMake(self.tf.frame.origin.x,(self.tf.frame.origin.y+self.tf.frame.size.height+10), self.view.frame.size.width*55/100,35)];
    self.tf2.borderStyle = UITextBorderStyleBezel;
    self.tf2.placeholder = @"Password!";
    self.tf2.secureTextEntry = YES;
    self.tf2.tag = 200;
    self.tf2.delegate = self; //델리게이트
    [contentView addSubview:self.tf2];
    

     
    //ID를 만드는 UILabel
     UILabel *idLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.tf.frame.origin.x-70, self.tf.frame.origin.y, self.view.frame.size.width*20/100, 30)];
    
    idLabel.text = @"ID";
    idLabel.textColor = [UIColor blackColor];
    idLabel.font = [UIFont systemFontOfSize:20];
    [contentView addSubview:idLabel];
    
    //PW를 만드는 UILabel
    UILabel *pwLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.tf2.frame.origin.x-70, self.tf2.frame.origin.y, self.view.frame.size.width*20/100, 30)];
    pwLabel.text = @"PW";
    pwLabel.textColor = [UIColor blackColor];
    pwLabel.font = [UIFont systemFontOfSize:20];
    [contentView addSubview:pwLabel];
    
    //회원가입을 만들어주는 UIButton
    UIButton *signupButton = [UIButton buttonWithType:UIButtonTypeCustom];
    signupButton.frame = CGRectMake(self.tf2.frame.origin.x+20, (self.tf2.frame.origin.x+self.tf2.frame.size.height+65), self.view.frame.size.width*20/100, 35);
    signupButton.tag = 400;
    [signupButton setTitle:@"회원가입" forState:UIControlStateNormal];
    [signupButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [signupButton addTarget:self action:@selector(clickBtn2:) forControlEvents:UIControlEventTouchUpInside];
    [contentView addSubview:signupButton];
    
    //확인을 만들어주는 UIButton
    UIButton *checkButton = [UIButton buttonWithType:UIButtonTypeCustom];
    checkButton.frame = CGRectMake((self.tf2.frame.origin.x+120), (self.tf2.frame.origin.x+self.tf2.frame.size.height+65), self.view.frame.size.width*20/100, 35);
    checkButton.tag = 300;
    [checkButton setTitle:@"로그인" forState:UIControlStateNormal];
    [checkButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [checkButton addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [contentView addSubview:checkButton];
    
}

- (void)clickBtn2:(UIButton *)sender{
    if (sender.tag == 400){
        UIStoryboard *st = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        SecondViewController *secondView = [st instantiateViewControllerWithIdentifier:@"SecondViewController"];
        
//        SecondViewController *secondView = [[SecondViewController alloc] init]; 화면전환(코드로만 했을 때)
        
        [self.navigationController pushViewController:secondView animated:YES];
    }
}

-(void)clickBtn:(UIButton *)sender{
    NSLog(@"로그인을 시도하였습니다.");
    if (sender.tag == 300) {
        
        if(self.tf.isFirstResponder){ //textField 포커스 여부 확인(isFirstResponder)
            NSLog(@"tf");
          [self.tf2 becomeFirstResponder]; //맞다면 textField2에 포커스를 이동(becomeFirstResponder)
        } else if(self.tf2.isFirstResponder){ //textField2 포커스 여부 확인(isFisrstResponder)
            NSLog(@"tf2");
          [self.tf2 resignFirstResponder]; //textField2 포커스 제거(resignFirstResponder)
        }
        if (self.tf.text == self.tf2.text) {
            NSLog(@"로그인 성공!");
        }else{
            NSLog(@"로그인 실패!!!");
        }
        
    }
}


-(void)textFieldDidBeginEditing:(UITextField *)textField {
    [self.sc setContentOffset:CGPointMake(0, 30) animated:YES];
    //스크롤 뷰 위에 있는 textField를 클릭하면 애니메이션 효과에 의해textField1, 2가 위로 함께 올라간다.
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self.tf resignFirstResponder];
    [self.sc setContentOffset:CGPointMake(0, 0) animated:YES];
    //return를 클릭하면 애니메이션 효과에 의해 키보드가 내려가면서 textField1, 2가 아래로 함께 내려간다.
    if (textField.tag == 100) {
        [self.tf2 becomeFirstResponder];
    }else if(textField.tag == 200)
        [self.tf2 resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
