//
//  Toolbox.h
//  Exam0131
//
//  Created by 조백진 on 2017. 1. 31..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;

@interface Toolbox : NSObject

+ (BOOL)checkDeveloper:(Person *)p1;
+ (BOOL)checkDesigner:(Person *)p1;


@end
