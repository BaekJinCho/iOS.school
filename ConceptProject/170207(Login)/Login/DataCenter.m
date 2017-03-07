//
//  DataCenter.m
//  Login
//
//  Created by 조백진 on 2017. 2. 24..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "DataCenter.h"
#import "SecondViewController.h"
//타입 별칭(상수)
static NSString *const LOGINUSERID = @"userID";
static NSString *const LOIGINUSERPASSWORD = @"userPassword";
@implementation DataCenter
//싱글턴 클래스 메소드
+ (instancetype)sharedInstance{
    static DataCenter *dataCenter;
    
    NSLog(@"호출!");
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[self alloc]init];
    });
    return dataCenter;
}
//1. 실행될 때 처음 실행된다.
//- (instancetype)init
//{
//    NSLog(@"이닛");
//    self = [super init];
//    if (self) {
//        
//        //plist 메소드 실행
//        [self loadInformation];
//        [self saveInformation];
//        
//        
//        //2. userID의 키값으로 되어있는 것이 object의 형태로 standardUserDefaults에 저장되어 있다.
//        //3. NSString 형태인 userID에 넣어준다.
//        self.userID = [[NSUserDefaults standardUserDefaults] objectForKey:@"userID"];
//        NSLog(@"id 가져옴");
//        self.password = [[NSUserDefaults standardUserDefaults] objectForKey:@"password"];
//        NSLog(@"password 가져옴");
//    }
//    return self;
//}
////userID와 Password를 저장하는 메소드
//- (void)settingUserIdPassword:(NSString *)userIDPassword {
//    [[NSUserDefaults standardUserDefaults] setObject:_userID forKey:@"userID"];
//    //userid의 값을 standardUserDefaults값에 저장 'userID'의 키 값으로
//    [[NSUserDefaults standardUserDefaults] setObject:_password forKey:@"password"];
//    //password의 값을 standardUserDefaults값에 저장 'password'의 키 값으로
//}

//plist 메소드
//데이터 저장
- (void)saveInformation{
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *basePath = [paths objectAtIndex:0];
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"Test.plist"];
    
    NSFileManager *fileManger = [NSFileManager defaultManager];
    if (![fileManger fileExistsAtPath:docuPath]) {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Test" ofType:@"plist"];
        [fileManger copyItemAtPath:bundlePath toPath:docuPath error:nil];
    }
    [self.plistData writeToFile:docuPath atomically:NO];
}
//데이터 로드
- (void)loadInformation{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *basePath = [paths objectAtIndex:0];
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"Test.plist"];
    
    NSFileManager *fileManger = [NSFileManager defaultManager];
    if (![fileManger fileExistsAtPath:docuPath]) {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Test" ofType:@"plist"];
        [fileManger copyItemAtPath:bundlePath toPath:docuPath error:nil];
    }
    self.plistData = [[NSArray arrayWithContentsOfFile:docuPath] mutableCopy];
//    self.userID = [[self.plistData objectAtIndex:[self.plistData count]-1] objectForKey:LOGINUSERID];
//    self.password = [[self.plistData objectAtIndex:[self.plistData count]-1] objectForKey:LOIGINUSERPASSWORD];
}

//id 중복 확인
- (BOOL)checkUserID:(NSString *)userID{
    
//    NSInteger index = 0;
//    while (!temp) {
//        temp = [self.plistData objectAtIndex:<#(NSUInteger)#>]
//        
//        index ++
//    }
    
    for(NSInteger i=0; i<[self.plistData count]; i++) {
        
        NSString *tempId = [[self.plistData objectAtIndex:i] objectForKey:LOGINUSERID];
        
        if([userID isEqualToString:tempId]) {
//            i = [self.plistData count];
            return YES;
        }
    }
    
    return NO;
}
@end
