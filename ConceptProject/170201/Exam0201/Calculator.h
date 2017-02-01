//
//  Calculator.h
//  Exam0201
//
//  Created by 조백진 on 2017. 2. 1..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

//무조건 양수결과를 주는 계산기 메소드 정의
-(NSUInteger)calcuOp:(NSString *)operation num1:(NSInteger)num1 num2:(NSInteger)num2;


//반올림 문제 : 소수점 3째 자리에서 반올림 하는 메소드 정의

@end
