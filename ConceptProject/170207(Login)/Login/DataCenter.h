//
//  DataCenter.h
//  Login
//
//  Created by 조백진 on 2017. 2. 24..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject
@property (nonatomic) NSString *userID;
@property (nonatomic) NSString *password;
//싱글턴 패턴 클래스 메소드 선언
+ (instancetype)sharedInstance;


//plist 프로퍼티(170305)
@property (nonatomic) NSMutableArray *plistData;
- (void)saveInformation;
- (void)loadInformation;
- (BOOL)checkUserID:(NSString *)userID;


//userID와 Password를 저장하는 메소드
//- (void)settingUserIdPassword:(NSString *)userIDPassword;
@end
