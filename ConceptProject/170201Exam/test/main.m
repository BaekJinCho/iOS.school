//
//  main.m
//  test
//
//  Created by 조백진 on 2017. 2. 1..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestExam.h"

int main(int argc, const char * argv[]) {
    
    [TestExam gugudan:9]; //구구단 클래스 메소드 호출(while문)
    
    [TestExam gugu:7]; //구구단 클래스 메소드 호출(for문)
    
    [TestExam factorial:6]; //팩토리얼 클래스 메소드 호출(while문)
    
    [TestExam factori:5]; //팩토리얼 클래스 메소드 호출(for문)
    
    [TestExam samgaksu:10]; //삼각수 클래스 메소드 호출(while문)
    
    [TestExam samgak:10]; //삼각수 클래스 메소드 호출(for문)
    
    
    return 0;
}
