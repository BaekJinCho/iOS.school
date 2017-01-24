//
//  IFStatementTest.m
//  ExamIF
//
//  Created by 조백진 on 2017. 1. 24..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "IFStatementTest.h"

@implementation IFStatementTest


// 시험점수를 받아서 해당 점수의 등급을 반환
+ (NSInteger)examScore:(NSInteger)average{
    
    NSInteger gradeNumber = 0;
    
    if (average<=100 || average>=91) {
        gradeNumber = 1;
        //NSLog(@"A+입니다.");
    } else if (average<=90 || average>=81){
        gradeNumber = 2;
        //NSLog(@"A 입니다.");
    } else if((average<=80 || average>=71)){
        gradeNumber = 3;
        //NSLog(@"B+ 입니다.");
    } else if((average<=70 || average>=61)){
        gradeNumber = 4;
        //NSLog(@"C+ 입니다.");
    } else if((average<=60 || average>=51)){
        gradeNumber = 5;
        //NSLog(@"C 입니다.");
    } else if((average<=50 || average>=41)){
        gradeNumber = 6;
        //NSLog(@"D+ 입니다.");
    } else if((average<=40 || average>=31)){
        gradeNumber = 7;
        //NSLog(@"D 입니다.");
    } else {
        //NSLog(@"F입니다.");
    }
    return gradeNumber;
    

}
//위에서 받은 스코어를 학점(포인트 4.5)으로 변환해 주는 메소드
+ (CGFloat)pointFromScore:(NSInteger)score{
    NSInteger grade = 0;
    if (score == 1) {
        grade = 4.5;
    }else if(score == 2){
        grade = 4.0;
    }else if(score == 3){
        grade = 3.5;
    }else if(score == 4){
        grade = 3.0;
    }else if(score == 5){
        grade = 2.5;
    }else if(score == 6){
        grade = 2.0;
    }else if(score == 7){
        grade = 1.5;
    }else if(score == 8){
        grade = 1.0;
    }
    return grade;
}

    
    

@end
