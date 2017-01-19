//
//  Person.h
//  MyThirdApp
//
//  Created by 조백진 on 2017. 1. 19..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property NSInteger age;
@property NSInteger eat;


- (id)eatDinner;

@end
