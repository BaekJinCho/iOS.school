//
//  SecondViewController.m
//  SeverClient
//
//  Created by 조백진 on 2017. 3. 15..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "DataCenter.h"

@interface SecondViewController ()
<UIScrollViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@property (weak, nonatomic) IBOutlet UIButton *signUpBtn;
@property (weak, nonatomic) IBOutlet UITextField *idTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property DataCenter *dataCenter;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //텍스트 필드 placeholder Color
    UIColor *color = [UIColor whiteColor];
    self.idTextField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"User Name" attributes:@{NSForegroundColorAttributeName:color}];
    self.passwordTextField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Password" attributes:@{NSForegroundColorAttributeName:color}];
    //버튼 효과
    self.loginBtn.layer.cornerRadius = 20;
    self.loginBtn.layer.borderWidth = 1;
    self.loginBtn.layer.borderColor = [UIColor whiteColor].CGColor;
    
    //notification을 이용하여 scrollview 올리기
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didChangeScrollView:) name:UIKeyboardWillHideNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didChangeScrollView:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didTestNoti:) name:@"clickMemberSignButton" object:nil];
}
//키보드 노티
- (void)didTestNoti:(NSNotification *)noti {
    
    NSLog(@"Click");
}
//키보드 노티 dealloc
- (void)dealloc {
    //Observer remove
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//notification을 이용하여 scrollview 올리기(method)
- (void)didChangeScrollView:(NSNotification *) notification {
    
    CGRect keyboardRect = [[notification.userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue];
    if ([notification.name isEqualToString:UIKeyboardWillShowNotification]) {
        
        [self.scrollView setContentOffset:CGPointMake(0, keyboardRect.size.height-170) animated:YES];
    
    } else if([notification.name isEqualToString:UIKeyboardWillHideNotification]) {
        
        [self.scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
    }
    NSLog(@"%lf", keyboardRect.size.width);
}

//textField Return 클릭시 불리는 method
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField.tag==1) {
        [self.passwordTextField becomeFirstResponder];
    } else if (textField.tag==2)
        [self.passwordTextField resignFirstResponder];
    //[textField resignFirstResponder];
    
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*************textfield delegate method를 이용해서 scrollview offset 올리기******************/
//- (void)textFieldDidBeginEditing:(UITextField *)textField{
//    [self.scrollView setContentOffset:CGPointMake(0, 400) animated:YES];
//    
//}
//
//- (void)textFieldDidEndEditing:(UITextField *)textField{
//    [self.scrollView setContentOffset:CGPointMake(0,0) animated:YES];
//}

//로그인 버튼
- (IBAction)clickLoginBtn:(UIButton *)sender {
    //id textField를 변수에 넣어주기
    NSString *idText = self.idTextField.text;
    //password textField를 변수에 넣어주기
    NSString *passwordText = self.passwordTextField.text;
    //id & passowrd textField responder 설정
    [self.idTextField resignFirstResponder];
    [self.passwordTextField resignFirstResponder];
    //dataCenter에 요청하기
     [self.dataCenter loginMembers:idText userPassword:passwordText completion:^(BOOL isSucessed, id respond) {
         if (isSucessed) {
             [self loginSucessAlert];
             NSLog(@"로그인 성공");
         } else {
             NSLog(@"로그인 실패!!!");
        }
    }];
    
}

//회원가입 버튼(회원가입 페이지로 이동)
- (IBAction)clickSignUpBtn:(UIButton *)sender {
    
}

//로그인 성공 alert
- (void)loginSucessAlert{
    
    UIAlertController *sucessAlert = [UIAlertController alertControllerWithTitle:@"로그인 성공" message:@"진짜 성공" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Sucess" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
        //PostViewcontroller로 넘어가기
        
    }];
    [sucessAlert addAction:ok];
    [self presentViewController:sucessAlert animated:YES completion:nil];
}


@end
