//
//  Person.h
//  MySecondApp
//
//  Created by 조백진 on 2017. 1. 17..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property id name;
@property id gender;
@property id age;
@property id skinColor;

- (id)eat;
- (id)run;
- (id)love;
- (id)talk;
@end
