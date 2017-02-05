//
//  TestExam.h
//  test
//
//  Created by 조백진 on 2017. 2. 1..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestExam : NSObject

//구구단을 만드는 클래스 메소드 정의(while문)
+ (void)gugudan:(NSUInteger)number;


//구구단을 만드는 클래스 메소드 정의(for문)
+ (void)gugu:(NSUInteger)dan;


//팩토리얼을 만드는 클래스 메소드 정의(whiel문)
+ (void)factorial:(NSUInteger)number;


//팩토리얼을 만드는 클래스 메소드 정의(for문)
+ (void)factori:(NSUInteger)num;


//삼각수를 만드는 클래스 메소드 정의(while문)
+ (void)samgaksu:(NSUInteger)num;

//삼각수를 만드는 클래스 메소드 정의(for문)
+ (void)samgak:(NSUInteger)num1;

@end
