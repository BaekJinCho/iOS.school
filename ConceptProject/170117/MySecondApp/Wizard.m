//
//  Wizard.m
//  MySecondApp
//
//  Created by 조백진 on 2017. 1. 17..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "Wizard.h"


@implementation Wizard

- (id)physicalAttack{
    NSLog(@"My Physical is very strong");
    return nil;
}

- (id)magicalAttack{
    NSLog(@"My Magical is strong");
    return nil;
}

- (id)physicalAttack:(id)toHuman{
    NSLog(@"~에게 %@," ,toHuman);
    return nil;
}

@end
