//
//  SecondViewController.m
//  SeverClient
//
//  Created by 조백진 on 2017. 3. 15..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
<UIScrollViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@property (weak, nonatomic) IBOutlet UIButton *signUpBtn;
@property (weak, nonatomic) IBOutlet UITextField *idTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textFieldDidBeginEditing:(UITextField *)textField{
    [self.scrollView setContentOffset:CGPointMake(0, 50) animated:YES];
    
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    [self.scrollView setContentOffset:CGPointMake(0,0) animated:YES];
}

- (IBAction)clickLoginBtn:(UIButton *)sender {
    
    
}

- (IBAction)clickSignUpBtn:(UIButton *)sender {
    
    
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
