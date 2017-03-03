//
//  DetailViewController.m
//  PlistTest
//
//  Created by 조백진 on 2017. 3. 3..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "DetailViewController.h"
#import "DataCenter.h"

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
    
    NSString *name = self.nameTextField.text;
    NSString *phoneNumber = self.phoneTextField.text;
    
    NSDictionary *result = @{@"FriendName":name, @"FriendPhoneNumber": phoneNumber};
    [[DataCenter sharedInstance].plistData addObject:result];
//    [[DataCenter sharedInstance].plistData insertObject:result atIndex:0];
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
