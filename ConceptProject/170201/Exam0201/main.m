//
//  main.m
//  Exam0201
//
//  Created by 조백진 on 2017. 2. 1..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbsoluteNum.h"
#import "GuGuDan.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        AbsoluteNum *testNumber1 = [[AbsoluteNum alloc]init];
        
        NSInteger resultNumber = [testNumber1 absoluteNum:-30];
        NSLog(@"-30의 절대값은 %lu",resultNumber);
        
        [GuGuDan gugudan:199]; // while문으로 구현한 구구단 클래스 메소드 호출
        
        [GuGuDan gudan:28]; // for문으로 구현한 구구단 클래스 메소드 호출
        
        [GuGuDan factorial:3]; //for문으로 구현한 팩토리얼 클래스 메소드 호출
        

        
        
    }
    return 0;
}
