//
//  main.m
//  MyThirdApp
//
//  Created by 조백진 on 2017. 1. 18..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Elf.h"
#import "Human.h"
#import "UniversityStudent.h"


int main(int argc, const char * argv[]) {
    Elf *e1 = [[Elf alloc] init];
//    e1.name = @"cho";
//    e1.level = 99;
//    e1.hp = 500;
//    e1.mp = 200;
//    e1.attackPower = 200;
    
    
    
    
    
    Human *h1 = [[Human alloc] init];
//    h1.name = @"jin";
//    h1.level = 98;
//    h1.hp = 200;
//    h1.mp = 500;
//    h1.attackPower = 300;
    
    GameCharactor *g1 =[[GameCharactor alloc] init];
//    g1.level = 99;
    
    
    g1.hp = 100;
    NSLog(@"캐릭터의 피는?", g1.hp);
    
    [e1 attackTo:h1];
    [e1 jumpTo:h1];
    [h1 jumpTo:e1];
    [e1 jump];
    [g1 jump];
    
    
//    Student *stu = [[Student alloc] init];
//    NSLog(@"Student");
//    stu.eat = 100;
//    stu 
//    [stu eatDinner];
   
    
    

    return 0;
}
