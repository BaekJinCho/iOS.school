//
//  Toolbox.m
//  Exam0131
//
//  Created by 조백진 on 2017. 1. 31..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "Toolbox.h"
#import "Person.h"


@implementation Toolbox


//Person의 직업이 developer인지 확인 하는 클래스 메소드
+ (BOOL)checkDeveloper:(Person *)p1{
    
    if([p1.job isEqualToString:@"developer"]){
        return YES;
        
    }else
        return NO;
    
}

//Person의 직업이 design인지 확인 하는 클래스 메소드
+ (BOOL)checkDesigner:(Person *)p1{
    
    if([p1.job isEqualToString:@"designer"]){
        return YES;
        
    }else
        return NO;
    
    
    
}


@end
