//
//  ThirdViewController.m
//  SeverClient
//
//  Created by 조백진 on 2017. 3. 16..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import "ThirdViewController.h"
#import "SecondViewController.h"
#import "PostViewController.h"
#import "DataCenter.h"

@interface ThirdViewController ()
<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIButton *signUpBtn;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@property (weak, nonatomic) IBOutlet UITextField *idTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordCheckTextField;
//@property DataCenter *dataCenter;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//회원가입 완료 버튼
#pragma mark - clickSignUpBtn Method
- (IBAction)clickSignUpBtn:(UIButton *)sender {
    
    NSString *idText = self.idTextField.text;
    NSString *password1Text = self.passwordTextField.text;
    NSString *password2Text = self.passwordCheckTextField.text;
    
    //dataCenter에서 요청 및 전송 하기(completion)
    [[DataCenter shardData] signUpMembers:idText userPassword:password1Text userPasswordCheck:password2Text completion:^(BOOL isSucessed, id respond) {
        if (isSucessed) {
            //block된 상태가 다른 Thread에서 돌기 때문에 main_queue로 보내주기
            dispatch_async(dispatch_get_main_queue(), ^{
                [self signUpSucessAlert];
            });
            
        } else {
            NSLog(@"회원가입 실패!!");
        }
    }];
    
    
    /* datacenter를 property로 뺐을 때
    [self.dataCenter signUpMembers:idText userPassword:password1Text userPasswordCheck:password2Text completion:^(BOOL isSucessed, id respond) {
        if (isSucessed) {
            NSString *token = [respond objectForKey:@"key"];
            NSLog(@"token ::: %@",token);
            [[NSUserDefaults standardUserDefaults] setObject:token forKey:@"Authorization"];
            NSLog(@"회원가입 성공!");
            [self signUpSucessAlert];
        } else {
            NSLog(@"회원가입 실패!!");
        }
    }];
     */
}

//로그인 버튼을 클릭했을 때 행동
#pragma mark - clickLoginBtn Method
- (IBAction)clickLoginBtn:(UIButton *)sender {
    SecondViewController *loginPage = [[SecondViewController alloc] init];
    [self dismissViewControllerAnimated:loginPage completion:nil];
    
}

//회원가입 성공 alert
- (void)signUpSucessAlert{
    
    UIAlertController *sucessAlert = [UIAlertController alertControllerWithTitle:@"회원가입 성공" message:@"진짜 성공" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Sucess" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //PostViewcontroller로 넘어가기
        PostViewController *postPage = [self.storyboard instantiateViewControllerWithIdentifier:@"PostViewController"];
        [self presentViewController:postPage animated:YES completion:nil];
        
    }];
    [sucessAlert addAction:ok];
    [self presentViewController:sucessAlert animated:YES completion:nil];
    
    
}

#pragma mark - textFieldShouldReturn Method
//return을 클릭했을 때 실행되는 메소드
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (textField.tag == 1) {
        [self.passwordTextField becomeFirstResponder];
    } else if(textField.tag == 2) {
        [self.passwordCheckTextField becomeFirstResponder];
    } else {
        [self.passwordCheckTextField resignFirstResponder];
    }
    return YES;
}

@end
