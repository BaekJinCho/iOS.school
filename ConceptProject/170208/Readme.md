# 2017. 02. 08

## - 자료구조

- 포인터
- 구조체
- typedef
- 배열
- Dictionaries

<br>

#### - 링크로 데이터 접근하기 (Pointer)

- Memory 구조

<br>

![](http://cfile1.uf.tistory.com/image/1815F9494E426B401C0612)

- STACK : 지역변수, 매개변수 등
- HEAP : 동적 할당을 위한 영역(객체가 들어감)
- DATA : 전역변수, 정적변수가 저장
- CODE : 프로그램 code 저장

<br>
**※ 클래스 = 우리가 쓴 코드 -> 파일로 가지고 있는 것<br>
※ 객체 = 코드를 실행해서 나오는 결과물**
		
	ex)
	NSInteger a = 4;
	NSInteger b;
	
	a=4, b -> STACK
	프로그램 code -> CODE
	
	ex2)
	Person *person = [[Person alloc] init];
		※ Person *person = 객체형 변수 
		: STACK
		※ [[Person alloc] init]; = 인스턴스 형태
		: HEAP
		
		※ 변수 이름 : 값을 가지고 있는 주소값을 가지고 있다.
		: 값을 실제로 가지고 있는 것이 아니고 실질적인 값은 HEAP에 있다.

#### - 두 코드의 차이점

	- NSInteger a = 4;
	- Person *person = [[Person alloc] init];

![](https://github.com/BaekJinCho/iOS.school/blob/master/Study/Image/stack.png?raw=true)

	- NSInteger a = 4;
	- Person *person = [[Person alloc] init];

![](https://github.com/BaekJinCho/iOS.school/blob/master/Study/Image/heap.png?raw=true)

#### - Pointer

: 프로그래밍 언어에서 다른 변수, 혹은 그 변수의 메모리 공간 주소를 가리키는 변수를 말한다.

	- Person *person = [[Person alloc] init];
	- Person *person2 = person;

![](https://github.com/BaekJinCho/iOS.school/blob/master/Study/Image/pointer.png?raw=true)

#### - 에스터 리스크(*)

- 변수 선언시 에스터 리스크는 주소값을 가지는 변수를 나타낸다.
- 변수 사용시 에스터 리스크는 변수의 값을 가르키며, &는 변수의 주소값을 나타낸다.
- Objective-C에서 사용되는 모든 Reference 변수에는 에스터 리스크가 붙어있다.

#### - 포인터 사용 이유

- 메모리에 있는 정보를 쉽게 다루기 위하여
- 복잡한 자료 구조를 효율적으로 처리하기 위해
- 메모리 공간을 효율적으로 사용하기 위해

#### - 더 읽어보기

※ [포인터의 장단점](https://goo.gl/eirVwc)

※ [포인터를 사용하는 이유](https://goo.gl/BO98yu)

<br>

## - 구조체

: 서로 다른 타입의 데이터가 묶여 있는 데이터의 구조

: 데이터의 묶음, 데이터 타입의 묶음

- 구조체는 할당시 복사되는데 새 변수에 할당되면 모든 데이터가 복사되고, 새 복사본을 수정해도 원래 복사본의 데이터는 변경되지 않는다.

- 구조체는 다른 구조체 또는 클래스에서 상속될 수 없으며, 클래스의 기본 클래스가 될 수 없다.

<br>

#### - Value Type vs Reference Type

: 실질적인 값 저장 vs 참조하고 있는 주소값의 저장(Pointer)

- 클래스 

: Reference Type (참조 형식), alloc을 사용하여 인스턴스화

- 구조체

: Value Type(값 형식), alloc를 사용하지 않고 인스턴스화

<br>

#### - 구조체 선언

	struct<tagName>{
		<value type> <name>;
		<value type> <name>;
		...
		};
		
		struct -> 구조체 키워드
		<tagName> -> Tag
		<value type> <name>; -> 항목

<br>
## - typedef

: 타입에 별명을 지어주는 키워드

	typedef <데이터타입> <이름>;

<br>

## - 배열

#### - Array

: 번호(인덱스)와 번호에 대응하는 데이터들로 이루어진 자료 구조를 나타낸다. 일반적으로 **배열에는 같은 종류의 데이터들이 순차적으로 저장**되어, 값의 번호가 곧 배열의 시작점으로부터 값이 저장되어 있는 상대적인 위치가 된다.

**※ index 0부터 시작‼️**

<br>

![](http://1.bp.blogspot.com/-w07aSdPwpEE/TcEAv7u3v3I/AAAAAAAAAFU/AKhWQLLtdwM/s400/objects-tenElementArray.gif)

#### - 특징

- 선언 당시 데이터 사이즈를 정적으로 만들어야 한다. (동적 생성 불가)
- index를 통해 데이터에 접근한다.
- 하나의 타입만 저장된다.
- Objectiv-C에서는 NSArray, NSMuableArray Class를 사용한다.

<br>

#### - Linked List

: 노드들의 집합

: 각 노드가 데이터와 **포인터**를 가지고 한 줄로 연결되어 있는 방식으로 데이터를 저장하는 자료 구조이다. 이름에서 말하듯이 데이터를 담고 있는 노드들이 연결되어 있는데 **노드**의 **포인터**가 다음이나 이전의 노드와의 연결을 담당하게 된다.

**※ 노드 : 데이터를 담을 수 있는 공간**
 
**※ 포인터 : 다음 데이터가 어디있는지에 대해서 주소값을 가지고 있다.**

![](http://cfs12.tistory.com/image/29/tistory/2008/12/05/11/33/4938930df28b0)

- 단일 연결 리스트
	- 가장 단순한 구조로 되어있다.
	- 다음 노드를 찾기 쉽지만, 선행 노드를 찾는 것은 어렵다.
	- 노트 탐색시 head pointer에서 시작해야만 한다.

- 이중 연결 리스트
	- 노드가 양방향의 링크를 모두 가지고 있으므로 탐색이 다른 리스트에 비해 용이하다.
	- 다른 리스트에 비해 코드가 복잡하고, 메모리 공간을 많이 차지한다.
- 원형 연결 리스트
	- 시작이 정해지지 않았다.
	- head를 내 마음대로 변경할 수 있다.
	- 마지막에 add할 경우 단인 연결에 비해 쉽다.

<br>

- Array 

: 정적(데이터 고정), 같은 타입(같은 크기)만 가능

- Linked list

: 동적(데이터 수정, 삽입 용이), 데이터의 타입(크기)가 달라도 가능


<br>

## - Dictionaries	

- HashTable를 사용한 데이터 구조인 Dictionary는  순서가 보장되지 않는 컬렉션으로 key값으로 데이터 access 가능하다.

- 대괄호 @{key:value}를 리터널 문법으로 사용하며 콤마로 데이터를 구분해준다.(ex: @{@"name":@"joo",@"age":@20})
- key는 유니크한 값을 가진다.
