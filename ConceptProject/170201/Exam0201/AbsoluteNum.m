//
//  AbsoluteNum.m
//  Exam0201
//
//  Created by 조백진 on 2017. 2. 1..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "AbsoluteNum.h"

@implementation AbsoluteNum

//숫자를 절대값으로만 받는 메소드 구현
- (NSUInteger)absoluteNum:(NSInteger)number {
    
    if (number > 0) {
        return number;
    } else {
        
        return number * -1; //음수일 때, -1을 곱한다.
    }
}

@end
