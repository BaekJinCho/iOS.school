//
//  SecondViewController.m
//  Login
//
//  Created by 조백진 on 2017. 2. 20..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "SecondViewController.h"
#import "DataCenter.h"

@interface SecondViewController ()
<UITextFieldDelegate>
@property UITextField *tf;
@property UITextField *tf2;
@property UITextField *tf3;

@property (nonatomic) DataCenter *signUpInformation;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //싱글턴
    self.signUpInformation = [DataCenter sharedInstance];
    
    //노티피케이션
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Noti" object:@"noti" userInfo:@{@"a":@[@"aa",@"bb",@"cc"]}];
    
    
    //회원가입 타이틀을 출력해주는 label
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, (self.view.frame.size.height/3))];
    title.text = @"SignUp";
    title.textColor = [UIColor blackColor];
    title.font = [UIFont systemFontOfSize:50];
    title.textAlignment = NSTextAlignmentCenter;
    //title.backgroundColor = [UIColor colorWithRed: 37/255.0 green: 150/255.0 blue: 204/255.0 alpha:0.7];
    [self.view addSubview:title];
    
    //Id를 만드는 textField
    self.tf = [[UITextField alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4,(self.view.frame.size.width/2)+150,self.view.frame.size.width*55/100,35)];
    self.tf.borderStyle = UITextBorderStyleBezel;
    self.tf.placeholder = @"ID";
    self.tf.tag = 100;
    self.tf.delegate = self; //델리게이트
    [self.view addSubview:self.tf];
    
    //Pw를 만드는 textField
    self.tf2 = [[UITextField alloc] initWithFrame:CGRectMake(self.tf.frame.origin.x,(self.tf.frame.origin.y+self.tf.frame.size.height+10), self.view.frame.size.width*55/100,35)];
    self.tf2.borderStyle = UITextBorderStyleBezel;
    self.tf2.placeholder = @"Password!";
    self.tf2.secureTextEntry = YES;
    self.tf2.tag = 200;
    self.tf2.delegate = self; //델리게이트
    [self.view addSubview:self.tf2];

    //Pw 다시 한번 확인하는 것을 만드는 textField
    self.tf3 = [[UITextField alloc] initWithFrame:CGRectMake(self.tf2.frame.origin.x,(self.tf2.frame.origin.y+self.tf2.frame.size.height+10), self.view.frame.size.width*55/100,35)];
    self.tf3.borderStyle = UITextBorderStyleBezel;
    self.tf3.placeholder = @"One More Password!";
    self.tf3.secureTextEntry = YES;
    self.tf3.tag = 300;
    self.tf3.delegate = self; //델리게이트
    [self.view addSubview:self.tf3];

    
    //ID를 만드는 UILabel
    UILabel *idLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.tf.frame.origin.x-70, self.tf.frame.origin.y, self.view.frame.size.width*20/100, 30)];
    idLabel.text = @"ID";
    idLabel.textColor = [UIColor blackColor];
    idLabel.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:idLabel];
    
    //PW를 만드는 UILabel
    UILabel *pwLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.tf2.frame.origin.x-70, self.tf2.frame.origin.y, self.view.frame.size.width*20/100, 30)];
    pwLabel.text = @"PW";
    pwLabel.textColor = [UIColor blackColor];
    pwLabel.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:pwLabel];
    
    //PW를 다시한번 확인하는 것을 나타내는 UILabel
    UILabel *rePwLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.tf2.frame.origin.x-70, self.tf2.frame.origin.y+self.tf2.frame.size.height+10, self.view.frame.size.width*20/100, 30)];
    rePwLabel.text = @"Re";
    rePwLabel.textColor = [UIColor blackColor];
    rePwLabel.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:rePwLabel];
    
    //회원가입 완료를 나타내주는 버튼
    UIButton *checkBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-60., self.tf2.frame.origin.y+self.tf2.frame.size.height+60, 120, 35)];
    checkBtn.tag = 400;
    [checkBtn setTitle:@"회원가입 완료!" forState:UIControlStateNormal];
    [checkBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [checkBtn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:checkBtn];
    
    // Do any additional setup after loading the view.
}

- (void)clickBtn:(UIButton *)sender{
    
    NSString* userId = self.signUpInformation.userID;
    NSString* password = self.signUpInformation.password;
    NSString* passwordCheck = self.signUpInformation.passwordCheck;
    
    if (sender.tag == 400) {
        if ([self.tf.text isEqualToString:userId] ) {
            [[NSUserDefaults standardUserDefaults]setObject:userId forKey:@"userID"];
        }else if([self.tf2.text isEqualToString:password] == [self.tf3.text isEqualToString:passwordCheck]){
            [[NSUserDefaults standardUserDefaults]setObject:password forKey:@"password"];
            [self dismissViewControllerAnimated:YES completion:nil];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
