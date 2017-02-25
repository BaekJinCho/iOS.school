//
//  DataCenter.m
//  Login
//
//  Created by 조백진 on 2017. 2. 24..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "DataCenter.h"
#import "SecondViewController.h"

@implementation DataCenter
//
+ (instancetype)sharedInstance{
    static DataCenter *dataCenter;
    
    NSLog(@"호출!");
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[self alloc]init];
    });
    return dataCenter;
}
- (instancetype)init
{
    NSLog(@"이닛");
    self = [super init];
    if (self) {
        //1. 실행될 때 처음 실행된다.
        //2. userID의 키값으로 되어있는 것이 object의 형태로 standardUserDefaults에 저장되어 있다.
        //3. NSString 형태인 userID에 넣어준다.
        self.userID = [[NSUserDefaults standardUserDefaults] objectForKey:@"userID"];
        NSLog(@"id 가져옴");
        self.password = [[NSUserDefaults standardUserDefaults] objectForKey:@"password"];
        NSLog(@"password 가져옴");
    }
    return self;
}
//userID와 Password를 저장하는 메소드
- (void)settingUserIdPassword:(NSString *)userIDPassword {
    [[NSUserDefaults standardUserDefaults] setObject:_userID forKey:@"userID"];
    //userid의 값을 standardUserDefaults값에 저장 'userID'의 키 값으로
    [[NSUserDefaults standardUserDefaults] setObject:_password forKey:@"password"];
    //password의 값을 standardUserDefaults값에 저장 'password'의 키 값으로
}

@end
