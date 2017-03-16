//
//  ThirdViewController.m
//  SeverClient
//
//  Created by 조백진 on 2017. 3. 16..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@property (weak, nonatomic) IBOutlet UIButton *signUpBtn;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;


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
    
    
}
//로그인 버튼

- (IBAction)clickLoginBtn:(UIButton *)sender {
    
}

- (IBAction)back:(UIStoryboardSegue *)sender
{
    
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
