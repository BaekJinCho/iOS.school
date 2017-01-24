//
//  Subject.h
//  ClassCalculator
//
//  Created by 조백진 on 2017. 1. 23..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Subject : NSObject

//은닉화
@property (readonly)NSUInteger koreanScore;
@property (readonly)NSUInteger mathScore;
@property (readonly)NSUInteger englishScore;
@property (readonly)NSUInteger scienceScore;

@property (readonly)NSUInteger grade;

//초기화 메서드 선언
- (instancetype)initWithKoreanScore:(NSUInteger)korean
                          mathScore:(NSUInteger)math
                       englishScore:(NSUInteger)eng
                          mathScore:(NSUInteger)science;

@end
