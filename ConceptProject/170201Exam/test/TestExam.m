//
//  TestExam.m
//  test
//
//  Created by 조백진 on 2017. 2. 1..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "TestExam.h"

@implementation TestExam

//구구단 만들기 클래스 메소드 구현(while문)
+ (void)gugudan:(NSUInteger)number{
    
    NSUInteger count = 1;
    while (count<10) {
        NSLog(@"%lu * %lu = %lu", number, count, number*count);
        count++;
    }
}


//구구단 만들기 클래스 메소드 구현(for문)
+ (void)gugu:(NSUInteger)dan{
    for (NSInteger c=1; c<10; c++) {
        NSLog(@"%lu * %lu = %lu", dan,c,dan*c);
    }
}


//팩토리얼 만들기 클래스 메소드 구현(while문)
+ (void)factorial:(NSUInteger)number{
    NSUInteger facto = 1;
    NSUInteger result = 1;
    while (result<=number) {
        facto = facto * result;
        result ++;
        
        
    }
    NSLog(@"%lu의 팩토리얼 : %lu", number, facto);
}

//팩토리얼 만들기 클래스 메소드 구현(for문)
+ (void)factori:(NSUInteger)num{
    NSUInteger fac = 1;
    for (NSUInteger f=1; f<=num; f++) {
        fac = f*fac;
    }
    NSLog(@"%lu의 팩토리얼은 %lu입니다.", num, fac);
}



//삼각수 만들기 클래스 메소드 구현(while문)
+ (void)samgaksu:(NSUInteger)num{
    NSUInteger result = 0;
    NSUInteger num1 = 1;
    while (num1<=num) {
        result = result + num1;
        num1++;
    }
    NSLog(@"%lu의 삼각수 : %lu",num, result);
}


//삼각수 만들기 클래스 메소드 구현(for문)
+ (void)samgak:(NSUInteger)num1{
    NSUInteger result2 = 0;
    for (NSUInteger s=1; s<=num1; s++) {
        result2 = s + result2;
    }
    NSLog(@"%lu의 삼각수는 %lu입니다",num1, result2);
}
    


@end
