//
//  Dog.h
//  MySecondApp
//
//  Created by 조백진 on 2017. 1. 17..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject

@property id name;
@property id gender;
@property id furColor; //털 색깔
@property id kindCat; //고양이 종

- (id)crying;
- (id)eat;
- (id)sleep;
- (id)fight;

@end
