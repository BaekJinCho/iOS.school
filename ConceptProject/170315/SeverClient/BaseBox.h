//
//  BaseBox.h
//  SeverClient
//
//  Created by 조백진 on 2017. 3. 24..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#ifndef BaseBox_h
#define BaseBox_h

typedef void(^completion) (BOOL isSucessed, id respond);
static NSString *const apiBase2 = @"https://fc-ios.lhy.kr/api";
static NSString *const signUpBase2 = @"https://fc-ios.lhy.kr/api/member/signup/";
static NSString *const loginBase2 = @"https://fc-ios.lhy.kr/api/member/login/";
static NSString *const postBase2 = @"https://fc-ios.lhy.kr/api/post/";

#endif /* BaseBox_h */

