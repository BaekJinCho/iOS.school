//
//  Person.h
//  Exam0131
//
//  Created by 조백진 on 2017. 1. 31..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property NSInteger age;
@property NSInteger eat;
@property NSUInteger tall;
@property NSUInteger weight;
@property NSString* job;
@property NSString* birthday;

- (instancetype)initWithName:(NSString *)name;
- (void)settingJob:(NSString *)job;
- (BOOL)checkBirthday;

@end
