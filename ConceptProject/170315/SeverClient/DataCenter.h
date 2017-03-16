//
//  DataCenter.h
//  SeverClient
//
//  Created by 조백진 on 2017. 3. 16..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NetworkCenter.h"

@interface DataCenter : NSObject

@property NetworkCenter* apiData;
@property NSUserDefaults *userDefault;

+ (instancetype)shardData;
@end
