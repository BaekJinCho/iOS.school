//
//  Designer.h
//  Exam0131
//
//  Created by 조백진 on 2017. 1. 31..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Designer : Person

//부모 클래스 재정의(Override)
- (void)settingJob:(NSString *)job;
//- (BOOL)checkBirthday;

//Designer 메소드 정의
- (void)drawingPicture;

@end
