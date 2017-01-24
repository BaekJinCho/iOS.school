//
//  DimensionalShapes.h
//  DimensionalShapes
//
//  Created by 조백진 on 2017. 1. 23..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Shapes;

@interface DimensionalShapes : NSObject

//도형 치수 property 설정
@property NSUInteger area;
@property NSUInteger perimeter;
@property NSUInteger circumference;
@property NSUInteger volume;

//@property CGFloat bottom;
//@property CGFloat height;


- (CGFloat)area:(Shapes *)shapes;
- (CGFloat)perimeter:(Shapes *)shapes;
- (CGFloat)circumference:(Shapes *)shapes;
- (CGFloat)volume:(Shapes *)shapes;



//클래스 메소드 만들기
//+ (CGFloat)inchFromCm:(CGFloat)cm;
//+ (CGFloat)mtwoFromPyung:(CGFloat)pyung;
//+ (CGFloat)hwaTosub:(CGFloat)sub;

@end
