//
//  Subject.m
//  ClassCalculator
//
//  Created by 조백진 on 2017. 1. 23..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "Subject.h"
@interface Subject ()

//은닉화
@property (readwrite)NSUInteger koreanScore;
@property (readwrite)NSUInteger mathScore;
@property (readwrite)NSUInteger englishScore;
@property (readwrite)NSUInteger scienceScore;

@property (readwrite)NSUInteger grade;


@end

@implementation Subject

//초기화 메서드 설정
- (instancetype)initWithKoreanScore:(NSUInteger)korean
                          mathScore:(NSUInteger)math
                       englishScore:(NSUInteger)eng
                          mathScore:(NSUInteger)science{
    self = [super init];
    self.koreanScore = korean;
    self.mathScore  = math;
    self.englishScore = eng;
    self.scienceScore = science;
    return self;
}

@end
