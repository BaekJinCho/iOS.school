# 2017. 02. 23

## - Singletone

#### - Singleton Pattern(방법론)

- 싱글톤 이란? : 어플리케이션 전 영역의 걸쳐 하나의 클래스의 단 하나의 인스턴스만(객체)를 생성하는 것을 싱글톤 패턴이라고 한다.
- 사용 이유 : 어플리케이션 내부에서 유일하게 하나만 필요한 객체에서 사용(셋팅, 데이터 등)
- 클래스 메소드로 객체를 만들며 static을 이용해서 단 1개의 인스턴스만 만든다.
- 앱 내에서 공유하는 객체를 만들 수 있다.

#### - Singleton Pattern 객체 만들기

```objc
@interface DataCenter : NSObject
+ (instanceytpe)sharedInstance;
@end

@implementation DataCenter
+ (instancetype)sharedInstance{
	static DataCenter *dataCenter = nil;
	
	 static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[self alloc]init];
    });
    return dataCenter;
}
@end
```

<br>

## - NSUserDefault
- 사용자의 정보를 저장하는 싱글톤 객체
- 간단한 사용자 정보를 저장 / 불러오기가 가능하게 만든 객체이다.
- 내부적으로 Plist 데이터에 저장되어 보안이 강하지 않다.