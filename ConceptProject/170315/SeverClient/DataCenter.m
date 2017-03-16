//
//  DataCenter.m
//  SeverClient
//
//  Created by 조백진 on 2017. 3. 16..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import "DataCenter.h"
#import "NetworkCenter.h"

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
        self.userDefault = [NSUserDefaults standardUserDefaults];
        
    }
    return self;
}
    
@end



