//
//  Warrior.h
//  MySecondApp
//
//  Created by 조백진 on 2017. 1. 17..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Wizard.h"
//@class Wizard;

@interface Warrior : NSObject

@property NSInteger health;
@property NSInteger mana;
@property NSInteger physicalPower;
@property NSInteger magicalPower;
@property NSString* weapon;
@property NSInteger physicalAttack;
@property NSInteger magicalAttack;

- (id)physicalAttack:(id)to;
- (id)magicalAttack:(id)toHim;

@end
