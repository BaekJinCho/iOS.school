//
//  main.m
//  ExamIF
//
//  Created by 조백진 on 2017. 1. 24..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IFStatementTest.h"


int main(int argc, const char * argv[]) {
    

    NSInteger score = 55; //점수 변수 선언
    
    //점수를 형식지정자로 받는 if문 선언
    if ([IFStatementTest examScore:score]) {
        NSLog(@"학생의 점수는 %lu이고 학점은 4.5입니다.", score);
    }else if([IFStatementTest examScore:score]){
        NSLog(@"학생의 점수는 %lu이고 학점은 4.0입니다.", score);
    }else if([IFStatementTest examScore:score]){
        NSLog(@"학생의 점수는 %lu이고 학점은 3.5입니다.", score);
    }else if([IFStatementTest examScore:score]){
        NSLog(@"학생의 점수는 %lu이고 학점은 3.0입니다.", score);
    }else if([IFStatementTest examScore:score]){
        NSLog(@"학생의 점수는 %lu이고 학점은 2.5입니다.", score);
    }else if([IFStatementTest examScore:score]){
        NSLog(@"학생의 점수는 %lu이고 학점은 2.0입니다.", score);
    }else if([IFStatementTest examScore:score]){
        NSLog(@"학생의 점수는 %lu이고 학점은 1.5입니다.", score);
    }else if([IFStatementTest examScore:score]){
        NSLog(@"학생의 점수는 %lu이고 학점은 1.0입니다.", score);
    }else
        NSLog(@"학생의 점수는 %lu이고 학점은 0입니다. 0!!!!!",score);
    



//점수를 받아서 학점으로 변환해주는 메소드
    NSInteger number = 5;
    if ([IFStatementTest pointFromScore:number] == 1) {
        NSLog(@"학생의 점수는 %lu이고 학점은 %.1f입니다.", number, [IFStatementTest pointFromScore:[IFStatementTest examScore:number]]);
//        else {}
    }


    

    

//    [IFStatementTest examScore:100];
//    [IFStatementTest examScore:80];
//    [IFStatementTest examScore:79];
//    [IFStatementTest examScore:65];
    
    

    
    return 0;
}
