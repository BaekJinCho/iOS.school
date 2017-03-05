//
//  ViewController.m
//  OnePhotoDiary
//
//  Created by 조백진 on 2017. 2. 27..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UIButton *facebookLoginButton;
@property (weak, nonatomic) IBOutlet UIButton *fackbookLoginButtonText;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //로그인 버튼 컬러
    self.loginButton.backgroundColor = [UIColor colorWithDisplayP3Red:62/255.0 green:152/255.0 blue:236/255.0 alpha:1];
    //페이스북 로그인 이미지 컬러
    self.facebookLoginButton.backgroundColor = [UIColor colorWithDisplayP3Red:61/255.0 green:90/255.0 blue:150/255.0 alpha:1];
    //페이스북 로그인 텍스트 컬러
    [self.fackbookLoginButtonText setTitleColor:[UIColor  colorWithDisplayP3Red:61/255.0 green:89/255.0 blue:155/255.0 alpha:1] forState:UIControlStateNormal];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
