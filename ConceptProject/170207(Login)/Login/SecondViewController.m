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
<UITextFieldDelegate, UIScrollViewDelegate>
@property UITextField *tf;
@property UITextField *tf2;
@property UITextField *tf3;
@property UIScrollView *sc;

//@property NSString *userid;
//@property NSString *password;

@property (nonatomic) DataCenter *signUpInformation;

@end
@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //싱글턴
    self.signUpInformation = [DataCenter sharedInstance];
    
    //노티피케이션
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Noti" object:@"noti" userInfo:@{@"a":@[@"aa",@"bb",@"cc"]}];
    
    //프레임 사이즈 변수
    CGSize frameSize = self.view.frame.size;
    //회원가입 타이틀을 출력해주는 label
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, (self.view.frame.size.height/3))];
    title.text = @"SignUp";
    title.textColor = [UIColor blackColor];
    title.font = [UIFont systemFontOfSize:50];
    title.textAlignment = NSTextAlignmentCenter;
    //title.backgroundColor = [UIColor colorWithRed: 37/255.0 green: 150/255.0 blue: 204/255.0 alpha:0.7];
    [self.view addSubview:title];
    
    //Login Page UIScrollView
    self.sc = [[UIScrollView alloc] initWithFrame:self.view.frame];
    self.sc.contentSize = CGSizeMake(frameSize.width, frameSize.height);
    self.sc.delegate = self;
    [self.view addSubview:self.sc];
    
    //Id를 만드는 textField
    self.tf = [[UITextField alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4,(self.view.frame.size.width/2)+150,self.view.frame.size.width*55/100,35)];
    self.tf.borderStyle = UITextBorderStyleBezel;
    self.tf.placeholder = @"ID";
    self.tf.tag = 100;
    self.tf.delegate = self; //델리게이트
    [self.sc addSubview:self.tf];
    
    //Pw를 만드는 textField
    self.tf2 = [[UITextField alloc] initWithFrame:CGRectMake(self.tf.frame.origin.x,(self.tf.frame.origin.y+self.tf.frame.size.height+10), self.view.frame.size.width*55/100,35)];
    self.tf2.borderStyle = UITextBorderStyleBezel;
    self.tf2.placeholder = @"Password!";
    self.tf2.secureTextEntry = YES;
    self.tf2.tag = 200;
    self.tf2.delegate = self; //델리게이트
    [self.sc addSubview:self.tf2];

    //Pw 다시 한번 확인하는 것을 만드는 textField
    self.tf3 = [[UITextField alloc] initWithFrame:CGRectMake(self.tf2.frame.origin.x,(self.tf2.frame.origin.y+self.tf2.frame.size.height+10), self.view.frame.size.width*55/100,35)];
    self.tf3.borderStyle = UITextBorderStyleBezel;
    self.tf3.placeholder = @"One More Password!";
    self.tf3.secureTextEntry = YES;
    self.tf3.tag = 300;
    self.tf3.delegate = self; //델리게이트
    [self.sc addSubview:self.tf3];

    //ID를 만드는 UILabel
    UILabel *idLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.tf.frame.origin.x-70, self.tf.frame.origin.y, self.view.frame.size.width*20/100, 30)];
    idLabel.text = @"ID";
    idLabel.textColor = [UIColor blackColor];
    idLabel.font = [UIFont systemFontOfSize:20];
    [self.sc addSubview:idLabel];
    
    //PW를 만드는 UILabel
    UILabel *pwLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.tf2.frame.origin.x-70, self.tf2.frame.origin.y, self.view.frame.size.width*20/100, 30)];
    pwLabel.text = @"PW";
    pwLabel.textColor = [UIColor blackColor];
    pwLabel.font = [UIFont systemFontOfSize:20];
    [self.sc addSubview:pwLabel];
    
    //PW를 다시한번 확인하는 것을 나타내는 UILabel
    UILabel *rePwLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.tf2.frame.origin.x-70, self.tf2.frame.origin.y+self.tf2.frame.size.height+10, self.view.frame.size.width*20/100, 30)];
    rePwLabel.text = @"Re";
    rePwLabel.textColor = [UIColor blackColor];
    rePwLabel.font = [UIFont systemFontOfSize:20];
    [self.sc addSubview:rePwLabel];
    
    //회원가입 완료를 나타내주는 버튼
    UIButton *checkBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-60., self.tf2.frame.origin.y+self.tf2.frame.size.height+60, 120, 35)];
    checkBtn.tag = 400;
    [checkBtn setTitle:@"회원가입 완료!" forState:UIControlStateNormal];
    [checkBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [checkBtn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.sc addSubview:checkBtn];
    // Do any additional setup after loading the view.
}
//텍스트 필드를 클릭했을 때, 키보드가 올라옴과 동시에 텍스트필드 전체가 올라가는 메소드
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    [self.sc setContentOffset:CGPointMake(0, 80) animated:YES];
}//스크롤 뷰 위에 있는 textField를 클릭하면 애니메이션 효과에 의해textField1, 2가 위로 함께 올라간다.

//텍스트 필드에서 return 버튼 눌렀을 때 커서 이동
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (textField.tag==100) {
        [self.tf2 becomeFirstResponder];
    }else if (textField.tag == 200){
        [self.tf3 becomeFirstResponder];
    }else if (textField.tag == 300){
        [self.tf3 resignFirstResponder];
    }
    return YES;
}
//회원가입 완료를 클릭하면 실행되는 메소드
- (void)clickBtn:(UIButton *)sender{
    if (self.tf2.text == self.tf3.text) {
    //plist를 사용한 회원가입
    self.userid = self.tf.text;
    self.password = self.tf2.text;
    // 내가 직접 입력한 id와 password를 추가
    self.userInformation = @{@"userID":self.userid, @"userPassword": self.password};
    [[DataCenter sharedInstance].plistData addObject:self.userInformation];
    [[DataCenter sharedInstance] saveInformation];
    [[DataCenter sharedInstance] loadInformation];    
    }

//NSUserDefault 사용
//    if (self.tf2.text == self.tf3.text) {
//        self.userid = self.tf.text; //첫번째 텍스트 필드의 텍스트를 NSString 형태인 userid에 저장
//        self.password = self.tf2.text; //두번째 텍스트 필드의 텍스트를 NSString 형태인 password에 저장
//        self.signUpInformation.userID = self.userid; //첫번째 텍스트 필드에서 저장한 형태를 DataCenter의 userID에 저장
//        self.signUpInformation.password = self.password; //두번째 텍스트 필드에서 저장한 형태를 DataCenter의 password에 저장
//        NSLog(@"회원가입 완료");
//    }else{
//        NSLog(@"회원가입 안됌");
//    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
