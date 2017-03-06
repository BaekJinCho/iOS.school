#2017. 03. 06
##- 타입 별칭
####- typedef
- 자료형의 별칭 지정

####- 상수(고정된 값을 지정해줄 때 사용)
- constatnt
- 변하지 않는 값을 생성하고자 할 때 사용
- const 키워드 사용

```objc
NSInteger const age = 30;
NSString *const name = @"joo";

age = 25; (에러)
name = @"yagom"; (에러)
```

<br>
####- 열거형
- enumeration
- 유사한 종류의 여러 값을 유의미한 이름으로 한 곳에 모아 정의
ex) 요일, 상태값, 월(Month) 등
- 열거형의 각 요소는 주로 정수형(NSInteger) 상수값

```objc
typedef NS_ENUM(NSInteger, UIViewAnimationTransition){
	UIViewAnimationTransitionNone,
	UIViewAnimationTransitionFromLeft,
	UIViewAnimationTransitionFromRight,
	UIViewAnimationTransitionCurlUp,
	UIViewAnimationTransitionCurlDown,
};


typedef NS_ENUM(NSUInteger, NSPostingStyle) {
	NSPostWhenIdle = 1,
	NSPostASAP = 2,
	NSPostNow = 3
};
```
<br>
####- 옵션
- option
- 열거형과 유사한 모습으로 옵션값을 정의
- 주로 비트플래그를 사용하여 정의

```objc
typedef NS_ENUM(NSInteger, UIViewAnimationTransition) {
    UIViewAnimationTransitionNone,
    UIViewAnimationTransitionFlipFromLeft,
    UIViewAnimationTransitionFlipFromRight,
    UIViewAnimationTransitionCurlUp,
    UIViewAnimationTransitionCurlDown,
};

typedef NS_OPTIONS(NSUInteger, UIViewAutoresizing) {
    UIViewAutoresizingNone                 = 0,
    UIViewAutoresizingFlexibleLeftMargin   = 1 << 0,
    UIViewAutoresizingFlexibleWidth        = 1 << 1,
    UIViewAutoresizingFlexibleRightMargin  = 1 << 2,
    UIViewAutoresizingFlexibleTopMargin    = 1 << 3,
    UIViewAutoresizingFlexibleHeight       = 1 << 4,
    UIViewAutoresizingFlexibleBottomMargin = 1 << 5
};

```

####- 매크로
- macro
- 전처리자(Preprocessor)의 일종인 #define을 사용하여 정의
- 단순한 수식 또는 변치않을 값을 정의하는데 주로 사용

####- define
- 매크로를 정의하기 위한 전처리자

```objc
#define PI 3.141592
NSLog(@"%f", PI);

#define NAME @"joo"
NSLog(@"%@", NAME);
```