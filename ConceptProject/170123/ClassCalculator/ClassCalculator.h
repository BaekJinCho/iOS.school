//
//  ClassCalculator.h
//  ClassCalculator
//
//  Created by 조백진 on 2017. 1. 23..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Subject;

@interface ClassCalculator : NSObject

//@property NSUInteger korean;
//@property NSUInteger math;
//@property NSUInteger english;
//@property NSUInteger science;
@property NSUInteger totalScore;
@property NSUInteger totalGrade;

//과목 점수 더하는 메서드
- (void)addToSubject:(Subject *)subjectName;

//평균 구하는 메서드
- (void)divisionTotalSubject:(Subject *)totalScore;

@end
