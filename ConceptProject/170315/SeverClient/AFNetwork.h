//
//  AFNetwork.h
//  SeverClient
//
//  Created by 조백진 on 2017. 3. 21..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Typedef.pch"

//typedef void(^completion) (BOOL isSucessed, id respond);
//static NSString *const apiBase2 = @"https://fc-ios.lhy.kr/api";
//static NSString *const signUpBase2 = @"https://fc-ios.lhy.kr/api/member/signup/";
//static NSString *const loginBase2 = @"https://fc-ios.lhy.kr/api/member/login/";
//static NSString *const postBase2 = @"https://fc-ios.lhy.kr/api/post/";
@interface AFNetwork : NSObject


- (void)signUpMembers:(NSString *)userID
         userPassword:(NSString *)userPassword
    userPasswordCheck:(NSString *)userPasswordCheck
           completion:(completion)completion;

- (void)loginMembers:(NSString *)userID
        userPassword:(NSString *)userPassword
          completion:(completion)completion;
/*
- (void)multiPartForm:(NSString *)title
              content:(NSString *)content
             formData:(NSData *)formdata
           completion:(completion)completion;
*/
@end
