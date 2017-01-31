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
    NSString *today = @"01/31";
    NSArray *temp =[today componentsSeparatedByString:@"/"]; // 오늘 날짜를 "/"을 기준으로 분리한다.
    NSArray *templist = [self.birthday componentsSeparatedByString:@"/"]; // "/"을 기준으로 분리한다.
    
    NSUInteger month = [[temp objectAtIndex:1] integerValue]; //오늘 날짜의 월은 temp index 1번에 위치해 있는데, 그것을 integerValue를 이용하여 숫자 형태로 바꿔준다.
    NSUInteger day = [[temp objectAtIndex:2] integerValue]; //오늘 날짜의 일은 temp index 2번에 위치해 있는데, 그것을 integerValue를 이용하여 숫자 형태로 바꿔준다.
    
    NSUInteger myMonth = [[templist objectAtIndex:1] integerValue]; //나의 생일의 날짜의 월은 templist index 1번에 위치해 있는데, 그것을 integerValue를 이용하여 숫자 형태로 바꿔준다.
    NSUInteger myDay = [[templist objectAtIndex:2] integerValue]; //나의 생일의 날짜의 일은 templist index 2번에 위치해 있는데, 그것을 integerValue를 이용하여 숫자 형태로 바꿔준다.
    
    //나의 생일이 현재 월/일과 맞는지 조건문으로 구현
    if (month == myMonth && day == myDay) {
        NSLog(@"생일입니다.");
        return YES;
    }
        NSLog(@"생일이 아닙니다.");
        return NO;
    
    
    
}




@end
