//
//  DataCenter.m
//  SeverClient
//
//  Created by 조백진 on 2017. 3. 16..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import "DataCenter.h"
//#import "NetworkCenter.h"
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
        //self.apiData = [[NetworkCenter alloc] init];
        //self.userDefault = [NSUserDefaults standardUserDefaults];
        self.afNetwork = [[AFNetwork alloc] init];
    }
    return self;
}

//회원가입 메소드 (afnetwork로 변경)
- (void)signUpMembers:(NSString *)userID
         userPassword:(NSString *)userPassword
    userPasswordCheck:(NSString *)userPasswordCheck
           completion:(completion)completion{
    
    [self.afNetwork signUpMembers:userID userPassword:userPassword userPasswordCheck:userPasswordCheck completion:^(BOOL isSucessed, id respond) {
        if (isSucessed) {
            
            NSString *token = [respond objectForKey:@"key"];
            NSLog(@"token ::: %@",token);
            [[NSUserDefaults standardUserDefaults] setObject:token forKey:@"Authorization"];
            NSLog(@"회원가입 성공!");
            
        } else {
            NSLog(@"회원가입 실패닷!");
        
        }
        //ThirdViewController에서 넘어온 Block(completion) AFNetwork로 보내기 & AFNetwork에서 처리된 Completion ThirdViewController 보내기
        completion(isSucessed, respond);
    }];
    
    
}

//로그인 메소드 (afnetwork로 변경)
- (void)loginMembers:(NSString *)userID
        userPassword:(NSString *)userPassword
          completion:(completion)completion{
    
    [self.afNetwork loginMembers:userID userPassword:userPassword completion:^(BOOL isSucessed, id respond) {
        
        if (isSucessed) {
            NSString *token = [respond objectForKey:@"key"];
            NSLog(@"%@",token);
            [[NSUserDefaults standardUserDefaults] setObject:token forKey:@"Authorization"];
            NSLog(@"로그인 성공");
        } else{
            NSLog(@"로그인 실패");
        }

        //SecondViewController에서 넘어온 Block(completion) AFNetwork로 보내기 & AFNetwork에서 처리된 Completion ThirdViewController 보내기
        completion(isSucessed, respond);
        
    }];
    
    
}

//multiPartForm 메소드
/*
- (void)multiPartForm:(NSString *)title
              content:(NSString *)content
             formData:(NSData *)formdata
           completion:(completion)completion{
    [self.apiData multiPartForm:title content:content formData:formdata completion:^(BOOL isSucessed, id respond) {
      
    }];
    
    
}
*/    
@end



