#2017. 02. 24
##- Notification
####- NSNotificationCenter
- 특정 이벤트가 발생 하였음을 알리기 위해 불특정 다수의 객체에게 알리기 위해 사용하는 클래스
- 어떤 객체라도 특정 이벤트가 발생했다는 알림을 받을 것이라고 관찰자(Observer)로 등록을 해두면 노티피케이션 센터가 모든 관찰자 객체에게 알림을 준다.
- 페이스북에서 친구를 등록해두면 친구의 이벤트가 내 뉴스피드나 알림으로 오는 것과 같은 이치 

####- Notification 구조
![](https://github.com/BaekJinCho/iOS.school/blob/master/Study/Image/Notification.png?raw=true)

1. 객체A가 노티피케이션 센터에 자신이 노티피케이션을 받을 것이라고 등록 (addObserver)
2. 객체 B가 필요한 시점에 노티피케이션 송출 (postNotification)
3. 노티피케이션 센터에서 적절한 객체와 메소드를 찾아 호출

####- Notification 주요 Method
- Initializing

```objc
+ (NSNotificationCenter *)defaultCenter;
```
- Add Observer (받는 부분) (**주로 Viewdidload에 작성**)

```objc
- (void)addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName object:(id)anObject(주로 nil을 쓴다.));
```

- Post Notification (보내는 부분)

```objc
- (void)postNotification:(NSNotification *)notification;
- (void)postNotificationName:(NSStirng *)aName object:(id)anObject;
- (void)postNotificationName:(NSStirng *)aName object:(id)anObject userInfo:(NSDictionary *)aUserInfo;
```
- Remove Observer (addObserver를 하면 꼭 해야한다.)

```objc
- (void)removeObserver:(id)observer;
```
