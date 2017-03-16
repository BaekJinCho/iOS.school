//
//  NetworkCenter.m
//  SeverClient
//
//  Created by 조백진 on 2017. 3. 16..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import "NetworkCenter.h"
#import "DataCenter.h"

@implementation NetworkCenter

- (void)signUpMembers:(NSString *)userID
         userPassword:(NSString *)userPassword
    userPasswordCheck:(NSString *)userPasswordCheck
           completion:(completion)completion{
    
    //session 생성
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    //requrest 생성
    NSURL *url = [NSURL URLWithString:signUpBase];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    NSString *dataString = [NSString stringWithFormat:@"userID=%@&password=%@&passwordCheck=%@",userID,userPassword,userPasswordCheck];
    request.HTTPMethod = @"POST";
    request.HTTPBody = [dataString dataUsingEncoding:NSUTF8StringEncoding];
    
    NSURLSessionDataTask *signUpData = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        
        NSDictionary *responsData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
    
    }];
    
}

- (void)loginMembers:(NSString *)userID
         userPassword:(NSString *)userPassword
           completion:(completion)completion{
    
    //session 생성
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    //requrest 생성
    NSURL *url = [NSURL URLWithString:loginBase];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    NSString *dataString = [NSString stringWithFormat:@"username=%@&password=%@",userID,userPassword];
    request.HTTPMethod = @"POST";
    request.HTTPBody = [dataString dataUsingEncoding:NSUTF8StringEncoding];
    
    NSURLSessionDataTask *loginData = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if(error != [NSNull null]){
            NSLog(@"성공");
            NSDictionary *responsData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            completion(YES,responsData);
            
        }
        else{
            NSLog(@"실패");
            completion(NO,error);
            
        }
        
        
//        NSDictionary *responsData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
//        NSString *token = [responsData objectForKey:@"key"];
//        NSLog(@"token ::::: %@",token);
        
        
    }];
    [loginData resume];

}
                                        
@end




