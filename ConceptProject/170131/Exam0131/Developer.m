//
//  Developer.m
//  Exam0131
//
//  Created by 조백진 on 2017. 1. 31..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "Developer.h"

@implementation Developer

//Developer의 직업 초기화 메서드 구현
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.job = @"developer";
    }
    return self;
}

- (void)settingJob:(NSString *)job{
    
}
//- (BOOL)checkBirthday:(NSUInteger)birthday{
//    
//}

- (void)seeTheComputer{
    
}
@end
