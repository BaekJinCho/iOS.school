#2017 01. 20

##- 초기화 메세드
: 객체를 생성한 후 곧바로 객체를 사용할 수 있도록 초기화 해 줄 수 있는 메서드

- property를 구현부로 숨겹버리니, 객체 생성 후에 property 값을 변경할 수가 없어요!
- 읽기전용 property라서 객체 생성 후에 값을 할당할 수가 없어요!
- 객체를 생성하면서 동시에 꼭 필요한 값들을 세팅해 주고싶어요!

ex) Person의 초기화 메서드 선언<br>

- Person.h 헤더 선언부<br>
  : - (**instancetype**)**init**WithName:(NSString *)name gender:(NSString *)gender<br>
- Person.m 구현부<br>
  { <br>**self** = [super **init**];<br>
  //property값 설정<br>
  self.name = name;<br>
  self.gender = gender;<br>
  
  **return self;**<br>
  } <br>
  **``객체의 초기화와 동시에  property 값 설정까지!``** <br>
  
  ####- 애플에서 만들어 놓은 초기화 메서드<br>
  : NSString, NSNumber, NSData, NSURL...