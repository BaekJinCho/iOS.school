//
//  NetworkCenter.h
//  SeverClient
//
//  Created by 조백진 on 2017. 3. 16..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^completion) (BOOL isSucessed, id respond);
static NSString *const apiBase = @"https://fc-ios.lhy.kr/api";
static NSString *const signUpBase = @"https://fc-ios.lhy.kr/api/member/signup/";
static NSString *const loginBase = @"https://fc-ios.lhy.kr/api/member/login/";

@interface NetworkCenter : NSObject


- (void)signUpMembers:(NSString *)userID
         userPassword:(NSString *)userPassword
    userPasswordCheck:(NSString *)userPasswordCheck
           completion:(completion)completion;

- (void)loginMembers:(NSString *)userID
        userPassword:(NSString *)userPassword
          completion:(completion)completion;
@end
