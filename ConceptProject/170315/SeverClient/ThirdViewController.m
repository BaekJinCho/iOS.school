//
//  ThirdViewController.m
//  SeverClient
//
//  Created by 조백진 on 2017. 3. 16..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import "ThirdViewController.h"
#import "SecondViewController.h"
#import "DataCenter.h"
#import "PostViewController.h"

@interface ThirdViewController ()
<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIButton *signUpBtn;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@property (weak, nonatomic) IBOutlet UITextField *idTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordCheckTextField;

@property DataCenter *dataCenter;

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
- (IBAction)clickSignUpBtn:(UIButton *)sender {
    
    NSString *idText = self.idTextField.text;
    NSString *password1Text = self.passwordTextField.text;
    NSString *password2Text = self.passwordCheckTextField.text;
    
    [[DataCenter shardData].apiData signUpMembers:idText userPassword:password1Text userPasswordCheck:password2Text completion:^(BOOL isSucessed, id respond) {
        
        if (isSucessed) {
            
            NSString *token = [respond objectForKey:@"key"];
            [[NSUserDefaults standardUserDefaults] setObject:token forKey:@"Authorization"];
            
//            [self.dataCenter.userDefault setObject:token forKey:@"Authorization"];
//            [self.dataCenter.userDefault objectForKey:@"Authorization"];
            
            NSLog(@"회원가입 token ::: %@", [self.dataCenter.userDefault objectForKey:@"Authorization"]);
            NSLog(@"회원가입 성공!");
        }
        else{
            NSLog(@"회원가입 실패!!");
        }
    }];
    
    
}

//로그인 버튼
- (IBAction)clickLoginBtn:(UIButton *)sender {
    SecondViewController *loginPage = [[SecondViewController alloc] init];
    PostViewController *postPage = [[PostViewController alloc] init];
//    [self dismissViewControllerAnimated:loginPage completion:nil];
    
}
//stroyboare에서 dismiss 주고싶을 때 method
- (IBAction)back:(UIStoryboardSegue *)sender
{
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    if (textField.tag == 1) {
        [self.passwordTextField becomeFirstResponder];
    }
    else if(textField.tag == 2) {
        [self.passwordCheckTextField becomeFirstResponder];
    }
    else{
        [self.passwordCheckTextField resignFirstResponder];
    }
        
    
    return YES;
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
