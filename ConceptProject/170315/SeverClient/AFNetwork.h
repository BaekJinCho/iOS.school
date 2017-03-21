//
//  AFNetwork.h
//  SeverClient
//
//  Created by 조백진 on 2017. 3. 21..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AFNetwork : NSObject
typedef void(^completion) (BOOL isSucessed, id respond);

- (void)multiPartForm:(NSString *)title
              content:(NSString *)content
             formData:(NSData *)formdata
           completion:(completion)completion;
@end
