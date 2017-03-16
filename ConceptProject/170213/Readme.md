# 2017. 02. 13

## - Application Life Cycle

#### - Main Function

: 모든 C언어 기반의 프로그램의 시작점은 main 함수이다.<br>iOS앱도 예외는 아니다. 작은 차이가 있다면 iOS앱에서는 직접 main 함수를 작성하지 않는다는 것이다.<br>  특별한 예외 상황이 아니라면 XCode가 제공하는 이 main 함수를 함부로 변경하지 않는게 좋다.


<br>

#### - The Structure of an App

: 앱이 시작되면서 UIApplicationMain 함수는 몇가지 중요한 객체를 생성하고 앱을 실행시킨다.<br> 모든 iOS앱의 중심에는 시스템과 앱의 여러 객체들간의 대화를 가능하게 해주는 UIApplication 객체가 있다. <br> 아래 그림을 보았을 때, iOS앱은 Model-view-controller(MVC) 구조를 사용한다.<br> 이 디자인패턴은 앱의 Data와 비지니스 로직을 UI요소로부터 분리를 시켜준다. 이 패턴 덕분에 다른 사이즈의 디바이스에서도 앱의 동작이 가능하다.

<br>

![](http://cfile29.uf.tistory.com/image/23380C3456920731138950)

**- 앱에서 공통으로 사용되는 객체를 보여주는 그림 -**


<br>

#### - The Main Run Loop

: 한 앱의 Main Run Loop는 사용자와 관련된 프로세스들을 처리한다.<br> UIApplication 객체는 앱이 실행(launch)되는 시점에 메인 run loop를 생성한 뒤 이 run loop로 이벤트를 처리한다.<br>  Main run loop는 앱의 메인 스레드에서 동작하고 main run loop는 사용자 관련 이벤트들을 받은 순서대로 처리한다.


![](http://cfile23.uf.tistory.com/image/26767C3E569215E00EF1E3)

**- 앱에서 main run loop와 사용자의 이벤트가 어떻게 인식되는지에 대한 구조를 보여주는 그림 -** 

**※ 순서**

1) 사용자가 디바이스에서 특정 액션을 취한다.

2) 그 액션에 해당하는 이벤트가 시스템에 의해 생성되어 UIKit에서 생성한 port를 통해 앱에 전달된다.

3) 이벤트들은 앱 내부적으로 큐에 저장된 채 차례대로 해당 동작이 실행되게 된다.
 
4) UIApplication 객체가 가장 먼저 이 이벤트를 받아서 어떤 동작이 취해질 지 결정한다.<br> 
(터치 이벤트의 경우 main window 객체가 인식하고 window 객체가 다시 터치가 발생한 view로 이벤트를 전달한다.)

<br>

#### - Event에 대한 처리

|이벤트 종류|설명|
|:---:|:---:|:---:|
|Touch|발생된 이벤트에 대한 뷰가 처리|
|Remote control & Shake motion events|First responder 객체|
|Accelerometer & Magnetometer & Gyroscope| 각각의 객체로 전달|
|Location|Core Location Framework를 사용하여 사용하여 위치와 관련된 이벤트를 등록할 수 있다.<br> Core Location에 대한 정보는 Location and Maps Programming Guide를 보자. 
|Redraw|Redraw이벤트는 이벤트 객체를 갖지는 않고 단순히 업데이트가 필요한 view 객체에 요청|


<br>

#### - 앱의 실행 상태

![](http://cfile23.uf.tistory.com/image/23735E4C5692204C1259A1)

<br>

|State|Description|
|:---:|:---:|:---:|
|Not running|아직 실행되지 않았거나 실행되다가 시스템에 의해 종료된 상태| 
|Inactive|앱이 Foreground에 올라와 있지만 이벤트를 받지 않고 있는 상태(다른 코드를 실행 중일 수도 있다.)<br> 앱에서는 보통 앱 상태변화가 일어나는 동안에 짧게 이 상태를 갖게된다. 
|Active|앱이 Foreground에서 실행중이고 이벤트를 받고 있는 상태.<br> Foreground에 올라와 있는 앱은 대부분 이 상태를 갖고있다.| 
|Background| 앱이 Background에 있고 코드를 실행하고 있는 상태. <br>대부분의 앱은 Suspended 상태로 가는 도중에 잠깐 이 상태를 갖게된다. Background 상태에서 추가적인 코드수행시간이 필요햔 앱일 경우에는 좀 더 머무를수도 있다.<br> 외에도 Background 상태로 실행이 되는 앱의 경우에는 Inactive상태 대신 Background 상태로 진입 
|Suspended|앱이 Background에 있으면서 코드를 수행하고 있지 않는 상태. <br>  Suspended 되어 있는 동안 앱은 메모리상에는 올라가 있지만 실질적으로 동작하고 있지는 않는다. <br>메모리가 부족한 상황에서 시스템은 현재 앱의 원활한 동작을 위해 시스템이 강제종료 하게된다.|

```
- Not Running : 앱이 실행되지 않은 상태
(Inactive와 Active 상태를 합쳐서 Foreground 라고 함)
- Inactive : 앱이 실행중인 상태 그러나 아무런 이벤트를 받지 않는 상태
- Active : 앱이 실행중이며 이벤트가 발생한 상태
- Background : 앱이 백그라운드에 있는 상태 그러나 실행되는 코드가 있는 상태
- Suspened : 앱이 백그라운드에 있고 실행되는 코드가 없는 상태
```

<br>

#### - AppDelegate의 메소드

- application:willFinishLaunchingWithOptions:<br>
: 앱이 최초로 실행될 때 호출되는 메소드 

- application:didFinishLaunchingWithOptions:<br>
: 앱이 실행된 직후 사용자의 화면에 보여지기 직전에 호출

- applicationDidBecomeActive:<br> 
: 앱이 Active 상태로 전환된 직후 호출

- applicationWillResignActive:<br>
: 앱이 Inactive 상태로 전환되기 직전 호출<br> 앱이 조용한(quiescent) 상태로 변환되는 작업을 여기서 진행

- applicationDidEnterBackground:<br>
: 앱이 Background 상태로 전환된 직후 호출

- applicationWillEnterForeground:<br> 
: 앱이 Background 에서 다시 Active 상태가 되기 직전에 호출 <br> 아직 앱이 Active 상태는 아니다.

- applicationWillTerminate:<br> 
: 앱이 종료될 것임을 알려준다.


<br>

#### - Supported Background Tasks

- Audio and AirPlay (음악) **※ 영상은 불가능**
- Location updates (위치 정보)
- Background fetch (네트워크를 통한 일반적인 다운로드나 미완료된 작업)
- Remote notifications (PushNotification)
- Voice over IP (인터넷을 사용한 음성통화)
- Newsstand downloads (뉴스 스탠드 다운로드)
- External accessory communication (기타 하드웨어 액세사리)
- Bluetooth LE accessories (블루투스 액세사리 사용)

**이 외에는 Background 작업을 할 수 없다.‼️**

<br>

#### - UIViewController의 생명주기 메소드

- 프로그래머가 직접 호출 불가
- 오버라이드 하는 메소드 이므로 꼭 해당 메소드 내에서 **[super 메소드]**를 통해 기존 메소드를 호출해야함!!!

<br>

![](https://cdn-images-1.medium.com/max/800/1*etDLgjBamDJoiaM3_hie9A.png)

**※ Appdelegate : Delegate에 의해서 실행<br>
※ UIViewController : 오버라이드**

#### - 생명주기 메소드

	- (void)loadView
	: UIviewControllerd의 view가 생성될 떄 호출
	
	- (void)viewDidLoad
	: UIViewController가 인스턴스화 된 직후 호출(처음 한 번 세팅해줘야 하는 값들을 넣기에 적절) 
	
	- (void)viewWillAppear:(BOOL)animated
	: view가 화면에 보여지기 직전에 호출
	: 화면이 보여지기 전에 준비할 때 사용
	: animated 파라미터는 뷰가 애니메이션을 동반하여 보여지게 되는지 시스템에서 전달해주는 불리언 값
	
	- (void)viewWillLayoutSubviews
	: view의 하위뷰들의 레이아웃이 결정되기 직전 호출
	
	- (void)viewDidLayoutSubviews
	: view의 하위뷰들이 레이아웃이 결정된 후 호출
	: 주로 view의 하위뷰들이 사이즈 조정이 필요할 때 호출
	
	- (void)viewDidAppear:(BOOL)animated
	: view가 화면에 보여진 직후에 호출
	: 화면이 표시된 이후 애니메이션 등을 보여주고 싶을 때 유용
	
	- (void)viewWillDisappear:(BOOL)animated
	: view가 화면에서 사라지기 직전에 호출
	
	- (void)viewDidDisappear:(BOOL)animated
	: view가 화면에서 사라진 직후에 호출