#2017. 03. 02
##- UIAlertController
- Alert : 화면에 딱 표시
- ActionSheet : 아래에서 올라옴

```objc
 //AlertController 객체 생성
 //객체 생성시 스타일 설정
  UIAlertControllerStyleAlert or UIAlertControllerStyleActionSheet
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"제목" message:@"메세지" preferredStyle:UIAlertControllerStyleAlert];
    
    //AlertController 액션버튼객체 생성
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"버튼이름" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    //block을 통한 버튼액션시 행동 결정
    NSLog(@"ok버튼이 클릭 되었습니다.");
    }];

    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"버튼이름" style:UIAlertActionStyleCancel handler:nil];
    
    //AlertController 액션버튼 추가
    [alertController addAction:okAction];
    [alertController addAction:cancelAction];

    //AlertController Present Modally를 통한 화면에 띄우기
    [self presentViewController:alertController animated:YES completion:nil];
```

<br>
##- UIGestureRecognizer
- 사용자의 입력을 전달받을 수 있는 방법을 제공
- Tap, Pinch, Rotation, Swipe, Pan(drag), Edge Pan, Long Press 등을 인지하는 각각의 서브클래스 존재
- View 위에 얹어 액션을 핸들링

```objc
UITapGestureRecognizer *tapGesture;
tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self
action:@selector(handleTap:)];

tapGesture.delegate = self;
tapGesture.numberOfTapsRequired = 1;

[self.view addGestureRecognizer:tapGesture];
```

<br>
##- Image Picker
####- UIImagePickerController
- 다양한 소스로부터 사진을 가져오는 기능이 구현되어 있는 클래스
- 사진 소스에는 라이브러리, 사진앨범, 카메라 등이 있다.
- 옵션을 주어 사진을 가져올 때, 사용자에게 정사각형으로 편집할 수 있도록 할 수 있다.

####- 사용자로부터 접근 권한 요청하기
- iOS 10에서부터 사용자의 데이터에 접근하기 위해서는 접근 권한을 설정해야 한다.(info.plist에 사용목적 작성)

- 항목
	- 미디어 라이브러리 접근 : NSAplleMusicUsageDescription

	- 블루투스 인터페이스 접근 : NSBluetoothPeripherealUsageDesCription
	- 달력 접근 : NSCalendarUsageDescription
	- 카메라 접근 : NSCameraUsageDescription
	- 연락처 접근 : NSContactsUsageDescription
	- 헬스 데이터 접근 : NSHealthShareUsageDescription
	- 건강 데이터 접근 : NSHealthUpdateUsageDescription
	- HomeKit 설정 데이터 접근 : NSHomeKitUsageDescription
	- 위치정보 접근(항상 허용) : NSLocationAlwaysUsageDescription
	- 위치정보 접근(사용할 경우만) : NSLocationWhenInUseUsageDescription
	- 마이크 접근 : NSMicrophoneUsageDescription
	- 사진 라이브러리 접근 : NSPhotoLibraryUsageDescription