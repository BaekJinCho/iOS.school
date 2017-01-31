//
//  main.m
//  Exam0131
//
//  Created by 조백진 on 2017. 1. 31..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Designer.h"
#import "Developer.h"
#import "LastDay.h"
#import "Toolbox.h"

int main(int argc, const char * argv[]) {
    
    
   Person *p1 = [[Person alloc] initWithName:@"cho"]; //Person 객체화

//  p1.name = @"cho"; //Person property 값 설정
//    p1.age = 28; //Person property 값 설정
//    p1.tall = 176; //Person property 값 설정
//    p1.weight = 72; //Person property 값 설정
//    p1.job = @"Software Engineer";
//    [p1 setJob:@"programmer"]; //Person 메서드 호출
//    
//    NSLog(@"나의 직업은 %@ 입니다.", p1.job);
//    NSLog(@"나의 이름은 %@ 입니다.", p1.name);
//    
//    
//
//    
//    //switch문 실행
//    LastDay *day = [[LastDay alloc] init];
//    [day lastDayOfMonth:4];
//    
    
    
    
    
    Designer *d1 = [[Designer alloc] init]; //designer 객체화
    Developer *d2 = [[Developer alloc] init]; //developer 객체화
    d2.job = @"developer";
    
    //클래스 메소드 호출
    if ([Toolbox checkDeveloper:d2]) {
        NSLog(@"사람의 직업은 개발자 입니다.");
    }else{
        NSLog(@"이 사람의 직업은 개발자가 아닙니다.");
    }

    


    
    
    

    
    return 0;
}