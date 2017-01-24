//
//  main.m
//  ClassCalculator
//
//  Created by 조백진 on 2017. 1. 23..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassCalculator.h"
#import "Subject.h"

int main(int argc, const char * argv[]) {
    
    //클래스 객체화(인스턴스화)
    ClassCalculator *calculator = [[ClassCalculator alloc] init];
    //Subject *subject = [[Subject alloc] init];
//    calculator.totalScore = calculator.totalScore;
//    calculator.totalGrade = calculator.totalGrade;
//    [calculator totalScore] =
    
    
    
    
    
    //1. Subject 객체화(인스턴스화)
    //2. 메소드 재정의
    Subject *subject = [[Subject alloc] initWithKoreanScore:50
                                                  mathScore:70
                                               englishScore:80
                                                  mathScore:100];
//객체 property 값 설정
//    subject.koreanScore = 60;
//    subject.mathScore = 70;
//    subject.englishScore = 80;
//    subject.scienceScore = 75;
    
    [calculator addToSubject:subject];
    [calculator divisionTotalSubject:subject];

    

    
   

    return 0;
}
