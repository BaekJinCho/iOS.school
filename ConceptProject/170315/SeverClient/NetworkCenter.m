//
//  NetworkCenter.m
//  SeverClient
//
//  Created by 조백진 on 2017. 3. 16..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import "NetworkCenter.h"
#import "DataCenter.h"


@implementation NetworkCenter : NSObject

/*
//회원가입 logic
- (void)signUpMembers:(NSString *)userID
         userPassword:(NSString *)userPassword
    userPasswordCheck:(NSString *)userPasswordCheck
           completion:(completion)completion{
    
    //session 생성
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    //requrest 생성
    NSURL *url = [NSURL URLWithString:signUpBase];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    //api에 있는 URL PARM
    NSString *dataString = [NSString stringWithFormat:@"username=%@&password1=%@&password2=%@",userID,userPassword,userPasswordCheck];
    //request method 지정
    request.HTTPMethod = @"POST";
    //dataString을 UTF-8로 바꿔 NSData로 변환하여 HTTPbody에 넣어준다.
    request.HTTPBody = [dataString dataUsingEncoding:NSUTF8StringEncoding];
    //Task 생성
    NSURLSessionDataTask *signUpData = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error == nil) {
            //JSON 형식을 Dictionary으로 넣어주기
            NSDictionary *responsData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            completion(YES,responsData);
            NSLog(@"회원가입 성공");
        } else {
            completion(NO,error);
            NSLog(@"회원가입 실패");
        }
    
    }];
    //task 시작
    [signUpData resume];
    
}

//login logic
- (void)loginMembers:(NSString *)userID
         userPassword:(NSString *)userPassword
           completion:(completion)completion{
    
    //session 생성
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    //requrest 생성
    NSURL *url = [NSURL URLWithString:loginBase];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    //api에 있는 URL PARM
    NSString *dataString = [NSString stringWithFormat:@"username=%@&password=%@",userID,userPassword];
    
    //request method 지정
    request.HTTPMethod = @"POST";
    request.HTTPBody = [dataString dataUsingEncoding:NSUTF8StringEncoding];
    
    //Task 생성
    NSURLSessionDataTask *loginData = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        //NSURLResponse를 NSHTTPURLResponse로 형변환하여 statusCode로 set
        NSInteger statusCode = [(NSHTTPURLResponse *)response statusCode];
        
        if(error == nil){
            //JSON 형식을 Dictionary으로 넣어주기
            NSDictionary *responsData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            
            if (statusCode == 200) {
                NSLog(@"로그인 성공");
                completion(YES,responsData);
            } else {
                NSLog(@"로그인실패 성공");
                completion(NO,responsData);
            }
        } else {
            NSLog(@"실패");
            completion(NO,error);
            
        }
    }];
    //task 시작
    [loginData resume];

}
 */


//multipart form method
/*
- (void)multiPartForm:(NSString *)title
              content:(NSString *)content
             formData:(NSData *)formdata
           completion:(completion)completion{
    
    //session 생성
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];

    //Request 객체 생성
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@",postBase]];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    request.HTTPMethod = @"POST";
    
    //token 값
    NSString *token = [NSString stringWithFormat:@"Token %@", [[NSUserDefaults standardUserDefaults] objectForKey:@"Authorization"]];
    
    //token 값 set
    [request setValue:token forHTTPHeaderField:@"Authorization"];
    
    /****************************Multipart Data**************************/
    //NSString *boundary = @"------------0x0x0x0x0x0x0x0x";
    //NSMutableData *body = [NSMutableData data];
    //start boundary
    ///////////타이틀 정보
/*
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"title\"\r\n\r\n%@", title] dataUsingEncoding:NSUTF8StringEncoding]];
    
    ///////////컨텐츠  정보
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"content\"\r\n\r\n%@", content] dataUsingEncoding:NSUTF8StringEncoding]];
    ///////////이미지 정보
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"img_cover\"; filename=\"image.jpg\"\r\n"] dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:[@"Content-Type: application/octet-stream\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
    [body appendData:formdata];
    
    //End boundary
    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
    /****************************Multipart Data End**************************/

    //bady에 셋팅
/*
    request.HTTPBody = body;
    NSString* MultiPartContentType = [NSString stringWithFormat:@"multipart/form-data; boundary=%@", boundary];
    [request setValue:MultiPartContentType forHTTPHeaderField: @"Content-Type"];

    //Task 생성
    NSURLSessionDataTask *formData = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error == nil) {
            NSDictionary *responsData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            completion(YES,responsData);
            NSLog(@"multipartForm 성공");
        } else {
            completion(NO,error);
            NSLog(@"multipartForm 실패");
        }
    }];
    //task 시작
    [formData resume];
    
}
*/
                                        
@end




