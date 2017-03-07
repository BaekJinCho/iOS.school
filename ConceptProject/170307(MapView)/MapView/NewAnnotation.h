//
//  NewAnnotation.h
//  MapView
//
//  Created by 조백진 on 2017. 3. 7..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface NewAnnotation : NSObject

<MKAnnotation>

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

- (void)setCoordinate:(CLLocationCoordinate2D)newCoordinate;

//초기화를 이용한 방법 가능 - (instancetype)initWithCoordinate:(CLLocationCoordinate2D)newCoordinate;
@end
