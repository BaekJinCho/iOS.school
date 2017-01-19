//
//  Warrior.m
//  MySecondApp
//
//  Created by 조백진 on 2017. 1. 17..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "Warrior.h"
#import "Wizard.h"

@implementation Warrior

- (id)physicalAttack{
    NSLog(@"I Am King Of Physical");
    return nil;
}

- (id)magicalAttack{
    NSLog(@"But I Have Low Mana");
    return nil;
}

- (id)physicalAttack:(id)dam{
    NSLog(@"%@ to", dam);
    return nil;
}


@end
