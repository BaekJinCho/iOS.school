//
//  Car.h
//  MySecondApp
//
//  Created by 조백진 on 2017. 1. 17..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property id carCompany;
@property id carTrim;
@property id carSpeed;
@property id carColor;
@property id numberWheels;
@property id numberWindows;
@property id numberSeats;
@property id gasolineDiesel;

- (id)forward;
- (id)backward;
- (id)leftTurn;
- (id)rightTurn;
- (id)brake;
- (id)lightOn;
- (id)lightOff;
- (id)HeaterOn;
- (id)HeaterOff;

@end
