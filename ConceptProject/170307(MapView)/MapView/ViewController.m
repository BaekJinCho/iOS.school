//
//  ViewController.m
//  MapView
//
//  Created by 조백진 on 2017. 3. 7..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "NewAnnotation.h"
//위도, 경도 타입 별칭!
//static const CGFloat wiDo = 36.991296;
//static const CGFloat kyungDo = 127.112029;

@interface ViewController ()
<CLLocationManagerDelegate>
//mapview 프로퍼티
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (nonatomic) CLLocationManager *locationManager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    //좌표 설정(위도, 경도)
//    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(wiDo, kyungDo);
//    MKCoordinateSpan span = MKCoordinateSpanMake(0.1, 0.1);
//    //지역 만들기
//    MKCoordinateRegion region = MKCoordinateRegionMake(coordinate, span);
//    [self.mapView setRegion:region];
    
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [self.locationManager requestAlwaysAuthorization];
    [self.locationManager startUpdatingLocation];
    
    [self.mapView setShowsUserLocation:YES];
    //[self.mapView setShowsUserLocation:YES];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    
//    [UIView animateWithDuration:5 animations:^{
//        }];
        [manager stopUpdatingHeading];
        
        //좌표 설정(위도, 경도)
        CLLocationCoordinate2D coordinate = ((CLLocation *)locations.lastObject).coordinate;
        MKCoordinateSpan span = MKCoordinateSpanMake(0.1, 0.1);
        //지역 만들기
        MKCoordinateRegion region = MKCoordinateRegionMake(coordinate, span);
        [self.mapView setRegion:region animated:YES];
    
//pin추가
    NewAnnotation *annotation = [[NewAnnotation alloc]init];
    annotation.coordinate = coordinate;
    [self.mapView addAnnotation:annotation];
    [self.mapView setShowsUserLocation:YES];

    [manager stopUpdatingLocation]; //위치 업데이트를 stop

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
