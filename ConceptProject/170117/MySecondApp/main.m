//
//  main.m
//  MySecondApp
//
//  Created by 조백진 on 2017. 1. 17..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Wizard.h"
#import "Person.h"
#import "Dog.h"
//Class 헤더파일을 불러온다.

int main(int argc, const char * argv[]) {
    
    // [[Wizard alloc] init]; //객체 생성 + 객체 초기화 = [Wizard new];

    //변수 생성
    /*
    Person *you = [[Person alloc] init];
    you.name = @"jin"; // 기존에 선언해놓은 person 클래스에 선언해놓은 name property를 불러온다. 이후 you라는 객체에 포함.
    [you eat];
    [you run];
    [you talk];
    [you love];
    
    Person *me = [[Person alloc] init];
    me.name = @"baek";
    [you talk];
    [you love];
    
    NSLog(@"My Name is %@", me.name);
    NSLog(@"%@ : %@", you.name, me.name);
    */
    
    Wizard *wizard = [[Wizard alloc] init];
    wizard.health = @100;
    wizard.mana = @50;
    wizard.weapon = @55;
    wizard.physicallPower = @1010;
    [wizard physicalAttack];
    [wizard magicalAttack];
    
    Wizard *wizard2 = [[Wizard alloc] init];
    wizard2.health = @200;
    wizard2.mana = @80;
    wizard2.weapon = @90;
    wizard2.physicallPower = @1220;
    [wizard2 physicallPower];
    [wizard2 magicalAttack];
   
    NSLog(@"She Physical is %@", wizard.health);
    NSLog(@"He Mana is %@", wizard.mana);
    
    Warrior *warrior = [[Warrior alloc] init];
    warrior.health = @150;
    warrior.mana = @100;
    warrior.weapon = @110;
    [warrior physicalAttack]; //메서드 구현
    [warrior magicalAttack]; //메서드 구현
    
    
    Warrior *warrior2 = [[Warrior alloc] init];
    warrior2.health = @250; //
    warrior2.mana = @50;
    warrior2.weapon = @99;
    [warrior2 physicalAttack]; //메서드 구현
    [warrior2 magicalAttack]; //메서드 구현
    
    NSLog(@"Babarian have high health %@", warrior.health);
    NSLog(@"Babarian have low mana %@", warrior.mana);
    
    //워리어가 위자드 공격
    [warrior physicalAttack:@"30"];
    
    //위자드가 워리어 공격
    [wizard physicalAttack:@"50"];
    
    
    /*
    Dog *prettyDog = [Dog new];
    prettyDog.name = @"choPuddle"; //기존 만들어 놓은 class의 property를 불러온다. 이후 prettyDog 객체에 이름 부여
    prettyDog.gender = @"boy";
    prettyDog.furColor = @"white";
    prettyDog.kindCat = @"puddle";
    [prettyDog eat];
    [prettyDog crying];
    
    NSLog(@"Dog name is %@", prettyDog.name);
    NSLog(@"furColor is %@", prettyDog.furColor);
    NSLog(@"kindCat is %@", prettyDog.kindCat);
    */
  
    /*
    NSLog(@"My Name is %@", me.name);
    NSLog(@"%@ : %@", you.name, me.name);
    
    NSLog(@"She Physical is %@", her.health);
    NSLog(@"He Mana is %@", him.mana);
    
    NSLog(@"Babarian have high health %@", babarian.health);
    NSLog(@"Babarian have low mana %@", babarian.mana);
    */
    
    return 0;
}
