//
//  DataCenter.h
//  SeverClient
//
//  Created by 조백진 on 2017. 3. 16..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "NetworkCenter.h"
#import "AFNetwork.h"

@interface DataCenter : NSObject

//@property NetworkCenter* apiData;
//@property NSUserDefaults *userDefault;
@property AFNetwork* afNetwork;

+ (instancetype)shardData;

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
