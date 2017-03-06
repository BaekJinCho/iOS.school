//
//  DetailViewController.m
//  PlistTest
//
//  Created by 조백진 on 2017. 3. 3..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "DetailViewController.h"
#import "DataCenter.h"
//타입 별칭(상수)
static NSString *const FRIENDNAME = @"FriendName";
static NSString *const FRIENDPHONENUMBER = @"FriendPhoneNumber";

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)didClickSaveButton:(id)sender {
    
    NSString *name = self.nameTextField.text; //내가 입력한 값을 string 형태로 저장
    NSString *phoneNumber = self.phoneTextField.text; //내가 입력한 값을 string 형태로 저장
    NSDictionary *result = @{@"FriendName":name, @"FriendPhoneNumber": phoneNumber}; // 내가 직접 입력한 이름과 연락처를 추가
    [[DataCenter sharedInstance].plistData addObject:result]; // 맨 끝에서부터 들어감
//    [[DataCenter sharedInstance].plistData insertObject:result atIndex:0]; // 내가 원하는 위치에 둘 수 있음
    [[DataCenter sharedInstance] saveFile];
    
    [self.navigationController popViewControllerAnimated:YES];
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
