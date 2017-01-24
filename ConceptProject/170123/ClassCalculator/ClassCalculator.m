//
//  ClassCalculator.m
//  ClassCalculator
//
//  Created by 조백진 on 2017. 1. 23..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ClassCalculator.h"
#import "Subject.h"

@implementation ClassCalculator


//네 개의 과목을 더하는 것
- (NSUInteger)addToSubject:(Subject *)subjectName{
    self.totalScore = subjectName.koreanScore + subjectName.mathScore + subjectName.englishScore + subjectName.scienceScore;
    NSLog(@"네 과목의 총 합은 %lu입니다.", self.totalScore);
    return self.totalScore;
    
}


//네 개의 과목을 더해서 4로 나누는 것
- (CGFloat)divisionTotalSubject:(Subject *)totalScore{
    self.totalGrade = self.totalScore / 4;
    NSLog(@"네 과목의 평균은 %lu입니다.", self.totalGrade);
    return self.totalGrade;
}

-(void)getLanguagePointKorean:(NSUInteger)korean
                       andEng:(NSUInteger)eng {
    NSLog(@"%lu %lu",(unsigned long)korean,(unsigned long)eng);
}

@end
