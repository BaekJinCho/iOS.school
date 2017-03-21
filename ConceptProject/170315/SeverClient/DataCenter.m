//
//  DataCenter.m
//  SeverClient
//
//  Created by 조백진 on 2017. 3. 16..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import "DataCenter.h"
#import "NetworkCenter.h"
#import "AFNetwork.h"

@implementation DataCenter

+ (instancetype)shardData{
    
    static DataCenter *dataCenter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[DataCenter alloc] init];
    });
    return dataCenter;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.apiData = [[NetworkCenter alloc] init];
        //self.userDefault = [NSUserDefaults standardUserDefaults];
    }
    return self;
}

//회원가입 메소드
- (void)signUpMembers:(NSString *)userID
         userPassword:(NSString *)userPassword
    userPasswordCheck:(NSString *)userPasswordCheck
           completion:(completion)completion{
    [self.apiData signUpMembers:userID userPassword:userPassword userPasswordCheck:userPasswordCheck completion:^(BOOL isSucessed, id respond) {
        if (isSucessed) {
            NSString *token = [respond objectForKey:@"key"];
            NSLog(@"%@",token);
            [[NSUserDefaults standardUserDefaults] setObject:token forKey:@"Authorization"];
            NSLog(@"로그인 성공");
        }
        else{
            NSLog(@"로그인 실패!!!");
            
        }
    }];
    
}

//로그인 메소드
- (void)loginMembers:(NSString *)userID
        userPassword:(NSString *)userPassword
          completion:(completion)completion{
    [self.apiData loginMembers:userID userPassword:userPassword completion:^(BOOL isSucessed, id respond) {
        if (isSucessed) {
            NSString *token = [respond objectForKey:@"key"];
            NSLog(@"%@",token);
            [[NSUserDefaults standardUserDefaults] setObject:token forKey:@"Authorization"];
            NSLog(@"로그인 성공");
        } else{
            NSLog(@"로그인 실패");
        }
        
        
    }];
    
    
}

//multiPartForm 메소드
- (void)multiPartForm:(NSString *)title
              content:(NSString *)content
             formData:(NSData *)formdata
           completion:(completion)completion{
    
    //[self.apiData multiPartForm:title content:content formData:formdata completion:^(BOOL isSucessed, id respond) {
      
    }];
    
    
}
    
@end



