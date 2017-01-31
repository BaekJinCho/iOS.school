//
//  DimensionalShapes.h
//  DimensionalShapes
//
//  Created by 조백진 on 2017. 1. 23..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Square;
@class Rectangle;
@class Circle;
@class Triangle;
@class Trapezoid;

@interface DimensionalShapes : NSObject

//도형 치수 property 설정
@property CGFloat area;
@property CGFloat perimeter;
@property CGFloat circumference;
@property CGFloat volume;


- (CGFloat)area:(Square *)base rectangle:(Rectangle *)rectangle circle:(Circle *)circle triangle:(Triangle *)triangle trapezoid:(Trapezoid *)trapezoid; // 도형 넓이 메서드 정의
- (CGFloat)perimeter:(Square *)base rectangle:(Rectangle *)rectangle;
- (CGFloat)circumference;
- (CGFloat)volume;



//클래스 메소드 만들기
//+ (CGFloat)inchFromCm:(CGFloat)cm;
//+ (CGFloat)mtwoFromPyung:(CGFloat)pyung;
//+ (CGFloat)hwaTosub:(CGFloat)sub;

@end
