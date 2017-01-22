//
//  GameCharactor.m
//  MyThirdApp
//
//  Created by 조백진 on 2017. 1. 19..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "GameCharactor.h"



@interface GameCharactor ()

@property NSString* name;
@property NSInteger level;
@property NSInteger hp;
@property NSInteger mp;
@property NSInteger attackPower;
@property NSString* gender;

@end



@implementation GameCharactor

- (void)jumpTo:(GameCharactor *)charactor{
    NSLog(@"%@에게로 점프 합니다.", charactor.name);
}

- (void)jump{
    NSLog(@"엘프는 점프를 해?");
}


- (void)setterHp:(NSUInteger)에이치피 {
    self.hp = 에이치피;
}


- (instancetype)initWithName:(NSString *)name gender:(NSString *)gender level:(NSInteger)level
{

    self = [super init];
    if(self){
    //프로퍼티값 설정
    self.name = name;
    self.gender = gender;
    self.level = 99;
    
}
    return self;
}

@end
