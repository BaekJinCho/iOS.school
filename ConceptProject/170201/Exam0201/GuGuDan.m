//
//  GuGuDan.m
//  Exam0201
//
//  Created by 조백진 on 2017. 2. 1..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "GuGuDan.h"

@implementation GuGuDan

//구구단을 실행시키기 위한 클래스 메소드 호출(while문)
+ (void)gugudan:(NSUInteger)dan{
    NSUInteger count = 1;
    while (count < 10) {
        NSLog(@"%lu * %lu = %lu", dan, count, dan*count);
        count++;
    }
    for (NSInteger c=1; c<10; c++) {
        NSLog(@"%lu * %lu = %lu", dan, c, dan*c);
    }
}





//구구단을 실행시키기 위한 클래스 메소드 구현(for문)
+ (void)gudan:(NSInteger)dandan{
    for(NSInteger c=1; c<10; c++)
        NSLog(@"%lu * %lu = %lu", dandan, c, dandan*c);
}





//팩토리얼(1~n까지 수의 곱)을 나타내는 클래스 메소드 구현(for문)
+ (void)factorial:(NSUInteger)number{
    NSUInteger result = 1;
    for (NSUInteger f = 1; f<=number; f++) {
        result = f * result;
        
    }
    
    NSLog(@"%lu의 팩토리얼은 %lu입니다.", number, result);
}





//배수 찾는 메소드 구현
//+ (NSString *)findMultipleNum:(NSUInteger)multipleNum maxLange:(NSUInteger)langeNum{
//                          
//}
//
//
//}
@end
