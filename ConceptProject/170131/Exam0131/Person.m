//
//  Person.m
//  Exam0131
//
//  Created by 조백진 on 2017. 1. 31..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name{
    self = [super init];
    if(self){
        self.name = name;
    }
    return self;
    }


- (void)settingJob:(NSString *)job{
    self.job = job;
}


- (BOOL)checkBirthday{
    NSString *today = @"2017/01/31";
    NSArray *temp = [self.birthday componentsSeparatedByCharactersInSet:@"/"]; // "/"을 기준으로 분리한다.
    
    NSUInteger month = [[temp objectAtIndex:1] integerValue];
    NSUInteger day = [[temp objectAtIndex:2] integerValue];
    
    NSUInteger myMonth = [[temp objectAtIndex:1] integerValue];
    NSUInteger myDay = [[temp objectAtIndex:2] integerValue];
    
    
    if (month == myMonth && day == myDay) {
        return YES;
    }else{
        return NO;
    }
    
    
}




@end
