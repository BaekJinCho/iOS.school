//
//  DataCenter.m
//  Login
//
//  Created by 조백진 on 2017. 2. 24..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "DataCenter.h"

@implementation DataCenter

+ (instancetype)sharedInstance{
    static DataCenter *dataCenter;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[self alloc]init];
    });
    return dataCenter;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.userID   = nil;
        self.password = nil;
        self.passwordCheck = nil;
    }
    return self;
}

- (void)settingUserId:(NSString *)userID {
    
    self.userID = userID;
    [[NSUserDefaults standardUserDefaults] setObject:userID forKey:@"userID"];
}

@end
