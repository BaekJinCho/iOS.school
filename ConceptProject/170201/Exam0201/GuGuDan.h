//
//  GuGuDan.h
//  Exam0201
//
//  Created by 조백진 on 2017. 2. 1..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GuGuDan : NSObject

//구구단을 실행시키기 위한 클래스 메소드 정의(while문)
+ (void)gugudan:(NSUInteger)dan;

//구구단을 실행시키기 위한 클래스 메소드 정의(for문)
+ (void)gudan:(NSInteger)dandan;

//팩토리얼(1~n까지 수의 곱)을 나타내는 클래스 메소드 정의(for문)
+ (void)factorial:(NSUInteger)number;

//배수를 찾기 위한 메소드 정의
//+ (NSString *)findMultipleNum:(NSUInteger)multipleNum maxLange:(NSUInteger)langeNum;

@end
