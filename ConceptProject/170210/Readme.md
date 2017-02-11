#2017. 02. 10
- property
- ARC

<br>
##- Property
####- 접근자 (getter / setter) - Accessor Method

- getter : 인스턴스 변수의 값을 가져오는 메소드
	
	- getter 메소드 명은 인스턴스 변수명과 같이 짓는다.
	- 인스턴스 변수 _name // 메소드 - (NSStirng *)name

- setter : 인스턴스 변수의 값을 변경할 때 사용하는 메소드

	- setter 메소드 명은 인스턴스 변수명 앞에 set 키워드를 붙인다.
	- 인스턴스 변수 _name // 메소드 -(void)setName:(NSStirng *)name

####- 자동 접근자 멤소드 생성

: **@Property**


![](https://github.com/BaekJinCho/iOS.school/blob/master/Study/Image/property.png?raw=true) 

<br>
####- property 속성
|분류|옵션|설명|
|:---:|:---:|:---:|
|이름 재정의|getter=newName<br>setter=newName|getter method 이름을 재 지정<br> setter method 이름을 재 지정
|Access 권한|readonly<br>readwrite|읽기 전용<br>읽기/쓰기 겸용
|쓰레드 처리|atomic<br>nonatomic|멀티쓰레드시 method lock<br>non atomic
|할당 방식|retain<br>unsafe_unretained<br>strong<br>weak<br>assign<br>copy|객체를 retain해서 할당<br>주소만 할당<br>ARC에서의 오너쉽 객체(retain과 비슷)<br>ARC에서 unsafe_unretained과 유사<br>값 할당<br>객체를 복사해서 할당	
|null 관리|nullable<br>nonnull<br>null_unspecified<br>null_resettable|null 유무에 따른 관리	

####- 이름 재정의

- 프로퍼티의 getter와 setter를 수동으로 지정
	- getter : getter 메서드의 이름을 수동지정
	- setter : setter 메서드의 이름을 수동지정

- 기본 설정
	- getter => 프로퍼티 이름
	- setter => set 프로퍼티 이름

**※ bool 변수의 경우는 getter의 이름을 is를 넣어서 만든다.** 

<br>
####- Access 권한
- 프로퍼티의 getter와 setter의 생성에 관한 설정
- readwrite : getter와 setter를 모두 자동생성
- readonly : getter만 자동생성
- 기본 설정 : readwrite

####- 스레드 처리
- atomic : 값 변경시 해당 변수를 lock하여 멀티스레드에 대한 안정성 보장
- nonatomic : non atomic
- 기본 설정 : atomic

<br>
##- ARC(Automatic Reference Counting)
: 기존에 수동(MRC라고 함)으로 개발자가 직접 retain/release를 통해 reference counting을 관리해야 하는 부분을 자동으로 해준다.
####- 메모리 관리 방식
- 명시적 해제 : 모든것을 개발자가 관리함
- 가비지 콜렉터 : 가비지 콜렉터가 수시로 확인해서 안쓰는 객체를 해제 시킴(시스템 부하)
- 레퍼런스 카운팅 : 오너쉽 정책에 의해 객체의 해제 정의 (Objective-C에서 사용되는 방식)

####- Reference counting rules 

- alloc을 하면 retain count가 1 증가
- retain을 호출하면 retain count가 1 증가
- release을 호출하면 retain count가 1 감사
- retain count가 0이 되면 객체가 메모리에서 해제
- dealloc을 호출하면 메모리에서 해제

####- 무엇이 문제 일까?

```objc
NSString *str1 = [[NSString alloc] init];
NSString *str2 = [[NSString alloc] init];
NSString *str3 = [[NSString alloc] init];
str2 = [[NSStirng alloc] init];

[str1 release];
[str2 release];
[str3 release];
```

![](https://github.com/projectlife724/i.wonsuk.choi/blob/master/Notes/Images/DAY%2022/ARC.png?raw=true)

**= str2가 leak가 난다‼️**


<br>
####- ARC 규칙
- retain, release, retainCount, autorelease, dealloc을 직접 호출할 수 없다.
- 구조체 내의 객체 포인트를 사용할 수 없다.
- id나 void * type을 직접 형변환 시킬 수 없다.
- NSAutoreleasePool 객체를 사용할 수 없다.

<br>
####- 새로운 지시어
- Strong
- weak

####- strong 객체 선언

```objc
@property(strong) NSString *str1;
@property(strong) NSString *str2;
```

####- weak 객체 선언

```objc
@property(strong) NSString *str1;
@property(weak) NSString *str2;
```
**- strong = 소유권, 참조권 -> (권리가 있다.)<br>
- 1weak = 참조권 -> (참조만 한다.)**

※ 객체 할당 -> reference count 증가<br>
※ 객체 해제 -> reference count 감소

<br>
####- weak을 사용하는 이유
: 순환 참조를 막기 위해<br>
: Autorelease pool을 대신해서 자동 해제가 필요한 경우<br>
: view의 strong 참조 때문에