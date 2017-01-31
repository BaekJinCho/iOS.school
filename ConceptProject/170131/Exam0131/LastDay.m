//
//  LastDay.m
//  Exam0131
//
//  Created by 조백진 on 2017. 1. 31..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "LastDay.h"

@implementation LastDay

//달의 마지막 날을 받는 메서드 구현 (switch문)
- (NSInteger)lastDayOfMonth:(NSUInteger)month{
    switch (month) {
        case 1:
        
        case 3:
            
        case 5:
            
        case 7:
            
        case 8:
            
        case 10:
            
        case 12:
            NSLog(@"이번 달의 마지막 날은 31일입니다.");
            break;
        case 2:
            NSLog(@"이번 달의 마지막 날은 28일입니다.");
            break;
        
        case 4:
            
        case 6:
            
        case 9:
            NSLog(@"이번 달의 마지막 날은 30일 입니다.");
            break;
    
            
        default:
            NSLog(@"해댱되는 월이 없습니다.");
            break;
    }
    return month;
}

@end
