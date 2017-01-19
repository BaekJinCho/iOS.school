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
// @property NSInteger hp;
@property NSInteger mp;
@property NSInteger attackPower;

@end



@implementation GameCharactor

- (void)jumpTo:(GameCharactor *)charactor;{
    NSLog(@"%@에게로 점프 합니다.", charactor.name);
}

- (void)jump{
    NSLog(@"엘프는 점프를 해?");
}





@end
