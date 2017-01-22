#2017. 01. 18
##- 매개변수
: 메서드를 호출할 때 부가적인 정보를 보내기 위한 것<br>
ex) 사람이 먹는다 -> 사람이 (무엇을) 먹는다.<br>
- ``(<반환 타입>)<메서드 이름):(<타입>)<내부 이름> <외부이름>:(<타입>)<내부이름> ...;``

<br>
###- 메서드 정의<br>
- (id)eat; -> - (id)eat:(id)food;<br><br>

###- 메서드 구현<br>
- (id)eat:(id)food {<br>
	NSLog(@"%@을(를) 먹습니다", food);<br> return nil;<br>}

<br><br>	
##- 데이터 타입<br>
- BOOL<br>
- 값 : YES or No <br><br>

##- 숫자 표현<br>
- 정수(1,2,3...) vs 실수(1.1, 2.222, 3.45)<br>
: 소수점이 있느냐 없느냐<br>

	####- 정수<br>
- 부호가 있는 정수 : NSInteger<br>
- 부호가 없는 정수 : NSUInteger<br>

	####- 실수<br>
- 32bit 실수 표현 : Float<br>
- 64bit 실수 표현 : Double<br>
- Core Graphic용 실수 표현 : CGFloat<br>

	####- 객체형<br>
``NSNumber(Reference Type)``<br><br>

##- 문자 표현<br>
- 문자<br>
단 하나의 문자를 표현 : ``char [Value Type]``<br>
- 문자열<br>
문장 또는 문단을 표현 : ``NSString [Refernce Type];`` <br>

- id 라는 타입은 **모든 객체 타입**을 의미

<br><br>
##- self<br>
: 객체 스스로 자신을 지칭할 때 사용하는 키워드

- [self Method:value];<br>
  : 자신의 메서드 호출 <br>
- self.someProperty<br>
  : 자신의 프로퍼티 접근<br>