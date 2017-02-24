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
@property (nonatomic) NSString *passwordCheck;
+ (instancetype)sharedInstance;
-(void)settingUserId:(NSString *)userID;

@end
