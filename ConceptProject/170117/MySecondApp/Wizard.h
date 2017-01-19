//
//  Wizard.h
//  MySecondApp
//
//  Created by 조백진 on 2017. 1. 17..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Warrior.h"
@class Warrior;

@interface Wizard : NSObject

@property NSInteger health;
@property NSInteger mana;
@property NSInteger physicallPower;
@property NSInteger magicalPower;
@property NSString *weapon;
@property NSString *magic;
@property NSInteger physicalAttack;
@property NSInteger magicalAttack;


- (id)physicalAttack:(id)toHuman;
- (id)magicalAttack:(id)toAnimal toMagic:(id)magic;

@end
