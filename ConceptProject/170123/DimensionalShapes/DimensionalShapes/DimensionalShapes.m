//
//  DimensionalShapes.m
//  DimensionalShapes
//
//  Created by 조백진 on 2017. 1. 23..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "DimensionalShapes.h"
#import "Square.h"
#import "Rectangle.h"
#import "Circle.h"
#import "Triangle.h"
#import "Trapezoid.h"
#import "Cube.h"
#import "RectangularSolid.h"
#import "CircularCylinder.h"
#import "Sphere.h"
#import "Cone.h"


//넓이, 직사각형, 원의 둘레, 부피 구해야 함


@implementation DimensionalShapes

//넓이 구하는 것
- (CGFloat)area:(Square *)base rectangle:(Rectangle *)rectangle circle:(Circle *)circle triangle:(Triangle *)triangle trapezoid:(Trapezoid *)trapezoid{
    self.area = base.squareBase * base.squareBase; //Square 넓이 구하는 공식
    self.area = rectangle.lenth * rectangle.width; //Rectangle 넓이 구하는 공식
    self.area = circle.pie * (circle.radius * circle.radius); //Circle 넓이 구하는 공식
    self.area = (triangle.base * triangle.height) / 2; //Triangle 넓이 구하는 공식
    self.area = (trapezoid.aaa + trapezoid.bbb) * trapezoid.height / 2; //Trapezoid 넓이 구하는 공식

}



//직사각형 둘레 구하는 것
- (CGFloat)perimeter:(Square *)base rectangle:(Rectangle *)rectangle{
    self.perimeter = (base.squareBase) * 4; //Square perimeter
    self.perimeter = (rectangle.lenth) * 2 + (rectangle.width) * 2;
}
    
}



//원의 둘레 구하는 것
- (CGFloat)circumference{
    
}



//부피 구하는 것
- (CGFloat)volume{









//클래스 메소드 만들기
//+ (CGFloat)inchFromCm:(CGFloat)cm{
//    return cm*2.54;
//}
//+ (CGFloat)mtwoFromPyung:(CGFloat)pyung{
//    return pyung*3.3058;
//    
//}
//+ (CGFloat)hwaTosub:(CGFloat)sub{
//    return (sub*1.8) + 32;
//}

}
@end
