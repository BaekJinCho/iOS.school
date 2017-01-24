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
    Subject *subject = [[Subject alloc] init];
    
    subject.koreanScore = arc4random();
    subject.mathScore = arc4random();
    subject.englishScore = arc4random();
    subject.scienceScore = arc4random();

    [calculator addToSubject:calculator];
   

    return 0;
}
