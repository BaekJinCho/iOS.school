#2017. 03. 07
##- 기기테스트
[- Developer Program 기기테스트 방법](http://lab.anybuild.co.kr/page/basic_app2)

<br>
##- MapView
- Region : 지역 (MKCoordinateRegion사용)
- Span : 펼쳐진 영역(zoom level) - (MKCoordinateSpan사용)
- Location Coordinate : 좌표
- latitude : 위도 (wgs84 좌표계 사용)
- longitude : 경도 (wgs84 좌표계 사용)

###- 좌표 설정 코드

```objc
//setLocation Location
CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(37.515675, 127.021378);
    
MKCoordinateSpan span = MKCoordinateSpanMake(0.1, 0.1);
    
[self.mapView setRegion:MKCoordinateRegionMake(coordinate,span)];
```

###- 사용자 위치 설정

- 사용자 허용

1) info.plist 항목 추가 (택1) - ios 10 이상

  - Privacy - Location When In Use Usage Description : YES
  - Privacy - Location Always Usage Description : YES

- Location Manager 객체 생성 (CLLocationManager)

2) 현 위치 요청 인증

```objc
-[self.locationManager requestWhenInUseAuthorization];
    
-[self.locationManager requestAlwaysAuthorization];
```
3) 업데이트

```objc
-[self.locationManager startUpdatingLocation];
    
-[self.locationManager stopUpdatingLocation];
```
    
    
###- 사용자 위치 설정 - 예제 <ViewDidLoad>   
    
```objc
self.locationManager = [[CLLocationManager alloc]init];
self.locationManager.delegate = self;
self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
[self.locationManager requestAlwaysAuthorization];

//[self.locationManager requestWhenInUseAuthorization];[self.locationManager startUpdatingLocation];
    
//display user location
[self.mapView setShowsUserLocation:YES];
```

###- Pin 추가 (Add Annotation)

- Annotation Protocol을 상속 받아서 Class 생성
- Annotation 객체 생성 후 Mapview에 Add

```objc
사용

Annoation *anno = [[Annoation alloc] initWithTitle:@"myPosition"
AndCoordinate:coordinate];

[self.mapview addAnnotation:anno];
```


**- viewForAnnotation(mapview에 있는 델리게이트 메소드)<br>
: 'map에 표시되는 pin의 모양을 바꾼다' 라는 뜻 (커스텀할 때)** 
