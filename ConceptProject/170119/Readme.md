# 2017. 01. 19

- 클래스
- 객체
- 메서드
- 상속

<br><br>

## - 클래스, 객체, 메서드

- 클래스(Class)<br> : 같은 종류의 집단에 속하는 속성과 행위를 정의한 것으로 **객체지향 프로그램의 기본적인 사용자 정의 데이터형**이라고 할 수 있다.<br>
- 객체(Object)<br> : 클래스의 **인스턴스(실제로 메모리상에 할당된 것)**이다. 객체는 자신의 고유의 속성을 가지며 클래스에서 정의한 행위를 수행할 수 있다. 객체의 행위는 클래스에 정의된 행위에 대한 정의를 공유함으로써 메모리를 경제적으로 사용한다.<br>
- 메서드(Method)<br> : 클래스로부터 **생선된 객체를 사용하는 방법으로서 객체에 명령을 내리는 메시지**라 할 수 있다. 메서드는 한 객체의 서브루틴 형태로 객체의 속성을 조작하는데 사용된다. 또 객체 간의통신을 메시지를 통해 이루어진다.

<br><br>

## - 상속

: 새로운 클래스가 기존의 클래스의 자료와 연산을 이용할 수 있게 하는 기능<br>
ex) @interface Warrior : ``NSObject``(부모 클래스)

<br><br>

## - NSObject

- Objective-C에서 가장 기본이 되는 클래스
- alloc, init 메서드가  NSObject에 정의되어 있다.
- Objective-C의 모든 클래스는 NSObject를 상속받아햐 한다.

<br><br>

![a0037268_4b6b91c3db151](https://cloud.githubusercontent.com/assets/24997656/22183129/0b89e8f0-e0fa-11e6-9adf-a80df1a3a8c1.jpg)

<br><br>

## - 재정의(Override)

: 부모 클래스에게서 물려받은 성질을 그대로 사용하지 않고 자식 클래스에게 맞는 형태 or 행위로 변경하여 사용할 수 있는 기능

- **재정의(Override)**와 **중복정의(Overload)**는 OOP **다형성**의 또다른 모습
**다형성** : 같은 하나의 명령이 다른 결과로 나타나는 것
- Objective-C는 **중복정의(Overload)** 를 지원하지 않습니다.

<br><br>

## - super

: 객체의 부모 클래스의 요소에 접근할 때 사용

- [**super** Method:valud];<br>
  : 부모 클래스에 정의된 메서드 호출(오버라이드 되기 전 메서드)
  
- self.someProperty<br>
  : 부모 클래스에 정의된 property 접근(오버라이드 되기 전 property)

<br><br>

## - 은닉화

: 내부 데이터, 내부 연산을 외부에서 접근하지 못하도록 은닉 or 격리시키는 것을 의미한다.<br>
- Q : 다른 객체가 직접 접근할 수 없도록 property를 노출하지 않는 방법은 없을까?<br>
- A : header의 property를 구현파일(.m) 파일로 옮겨올 수 있다.<br>

- **외부 또는 자식 객체에서 접근해야 할 값이라면 읽기전용(readonly)으로!**<br>
- 같은 클래스에서 은닉화를 진행할 때 카테고리는 쓸 필요가 없다.<br> 다른 클래스에서는 카테고리는 써야한다.
