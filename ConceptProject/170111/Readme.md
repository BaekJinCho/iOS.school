# 2017. 01. 11

- 운영체제
- 프로세스
- 자료구조
- 알고리즘

<br>

## - 운영체제(Operating System)

: 사용자가 컴퓨터를 쉽게 다루게 해주는 인터페이스

사전적 의미 말고 좀 더 쉽게!<br>

**'응용 프로그램과 하드웨어 사이의 중재자 역할'** 입니다.

- 과거 : 하드웨어 -> 사용자
- 현재 : 하드웨어 -> 운영체제 -> 응용 프로그램 -> 사용자


### - 운영체제 종류

- Windows<br>
- Linux
- Unix
- Dos

<br><br>

## - 운영체제 역할

1. **시스템 하드웨어 관리**<br>
 - 사용자 프로그램의 오류나 잘못된 자원 사용을 감시<br>
 - 입출력 장치 등의 자원에 대한 연산과 제어를 관리<br>
ex) 사용자가 과도한 시스템 메모리를 사용하려하거나, 뻘짓했을 때 죽여버리는 것(중재, 통제)

2. **가상 시스템 서비스 제공**<br>
 - 사용자에게 컴퓨터의 프로그램을 쉽고 효율적으로 실행할 수 있는 환경을 제공<br>
ex) 실제로는 0,1 밖에 없는데 어떤 공간(가상의 공간)을 제공해주는 것 같은 느낌적인 느낌!

3. **자원 관리**<br>
 - 컴퓨터 시스템 하드웨어 및 소프트웨어 자원을 여러 사용자간에 효율적으로 할당, 관리, 보호<br>
1) 프로세스 관리<br>
2) 주기억장치 관리<br>
3) 파일 관리

<br><br>

## - 프로세스(Process)

: 프로그램이 살아서 메모리에 데이터가 올라가고 있는 상태
  주기억장치로 0,1이 올라오는 상태

프로세스는<br>
- **생성 -> 대기 -> 준비 ↔ 실행 -> 종료**

이런 과정인데,<br> 
**대기 -> 준비 ↔ 실행**<br>
이 과정을 반복하게 됩니다!

<br>

![](https://github.com/projectlife724/i.wonsuk.choi/blob/master/Notes/Images/DAY%203/ProcessGraph.png?raw=true)

<br><br>
프로세스 안에도 여러가지 작업 방식이 있습니다.

### - 프로세스 스케줄링

1) **FCFS(Fist com Fist Served)**<br>
: 준비 상태에서 먼저 오는 프로세스를 먼저 처리시키는 알고리즘<br>

	- ex)은행에서 먼저 오는 사람부터 처리해주죠?

<br>
2) **SJF(Shortes Job First)**<br>
: 실행 시간이 가장 짧은 프로세스에게 CPU 할당 <br>

	- 평균 대기시간이 가장 적은 알고리즘

<br>
3) **Round Robin Scheduling**<br>
: 시분할 시스템을 위해 고안된 방식<br>
	
	- 각 프로세스는 시간 할당량 동안만 실행<br>
	- 완료되지 않으면 다음 프로세스에게 CPU를 넘겨주고 준비상태 큐의 가장 뒤로 배치<br>
	- 오버헤드 자주 발생

※ **오버헤드 : 프로그램을 실행시키는데 그 주변의 작업이 더 큰 것**

<br>
4) **Priority Based Scheduling**<br>
: 프로세스 마다 우선순위 부여

<br>
5) **Multi Queue Scheduling**<br>
: 준비상태 큐 마다 다른 스케줄링 기법 사용<br>

	- 다른 준비 상태 큐로 이동 불가

<br>
**- 자, 이제 좀 컴퓨터가 어떻게 이해하는지 이해하셨나요?**

<br><br>
**- 이제부터가 진짜진짜 중요한 시간이에요!!**
<br>

## - 자료구조(Data Structure)

- 사전적 의미
: 자료를 효율적으로 이용할 수 있도록 컴퓨터에 저장하는 방법이다. 신중히 선택한 자료구조는 보다 효율적인 알고리즘을 사용할 수 있게 한다.

- 좀 더 쉽게 설명하자면?
: 데이터를 구조적으로 표현하는 방식
: 자료를 효율적으로 관리하고 구조화 시키기 위한 방법론

**자료구조도 분류가 됩니다.<br>**

> 1. 생김새에 따라서<br>- 원시구조 : 정수, 실수, 문자<br> - 선형구조 : 배열, 연결리스트, 스택, 큐<br>- 비 선형구조 : 트리, 그래프

> 2. 실체화에 따라서<br>- 물리적 구조 : 정수, 실수, 문자, 배열, 연결리스트<br>- 추상적 구조 : 스택, 큐, 트리, 연결리스트

<br>

### - 선형구조

1) **배열(Array)**<br>
: 번호(인덱스)와 번호에 대응하는 데이터들로 이루어진 자료 구조를 나타낸다.

ex) 배열은 쉽게 초등학교 때, 신발장이라고 생각하시면 됩니다.
신발장 크기와 위치가 정해져있죠?

<br>
![](https://github.com/projectlife724/i.wonsuk.choi/blob/master/Notes/Images/DAY%203/SingleLinkedList.png?raw=true)

배열도 크기가 정해져 있습니다.<br>

- 장점
 - 크기가 정해져 있어서 빠르다.<br>
 - 단점 : 삽입, 삭제 불가능(크기가 정해져 있어서 그렇습니다.)
<br><br>
아무래도 불편한 점이 있죠?<br>
그래서 **'연결 리스트'**가 있습니다.
<br><br>

2) **연결 리스트(Linked List)**<br>
: 각 노드가 데이터와 포인터를 가지고 한 줄로 연결되어 있는 방식으로 데이터를 저장하는 자료 구조입니다.

<br>
![](https://github.com/projectlife724/i.wonsuk.choi/blob/master/Notes/Images/DAY%203/DoubleLinkedList.png?raw=true)

- 장점
 - 한 줄로 연결되어 있다 보니 잘못된 것이 있으면 되돌아 와 수정 가능!<br>
 - 추가된 내용이 있다면 삽입 가능!
- 단점
 -  속도가 느리다.
<br><br>

3) **스택(Stack)**<br>
: 제한적으로 접근할 수 있는 나열 구조입니다.<br>
쉽게 말하면?<br>
: 어떤 물건들이 쌓여있는 형태를 말합니다.

- Data 넣는 것 : PUSH
- Data 꺼내는 것 : POP
<br><br>
꺼내지는 자료는 가장 최근에 보관한 자료부터 나오게 됩니다.<br> 
이처럼 나중에 넣은 값이 먼저 나오는 것을 LIFO 구조라고 합니다.<br>
ex) 뒤로 가기
<br><br>

4) **큐(Queue)**<br>
: 먼저 들어온 데이터가 먼저 처리된다.<br>
이와 같은 구조를 FIFO(First-In First-Out)<br>

 - Queue<br> 
: 표를 사러 일렬로 늘어선 사람들로 이루어진 줄을 말하기도 하며, 먼저 줄을 선 사람이 먼저 나갈 수 있는 상황을 연상하면 됩니다.
<br><br>

5) **덱(Double-Ended Queue)**<br>
: 스택 + 큐<br>
양쪽 끝에서 삽입, 삭제가 모두 가능한 자료구조
<br><br>

### - 비 선형구조

1) **트리(Tree)**<br>
: 부모 노드(The Root Node), 자식 노드(A Child Node)가 있는 형태의 자료구조
  부모 노드 밑에 여러 자식 노드가 연결되고, 자식 노드 각각에 다시 자식 노드가 연결되는 재귀적 형태입니다.

1) 이진 트리(Binary Tree)<br>
2) 이진 탐색 트리(Binary Search Tree, BST)
<br><br>

2) **그래프(Graph)**<br>
: 연결되어 있는 원소간의 관계를 표현하는 자료구조<br>
  서로 간에(대규모) 관계를 파악(표현)하는데 쓰입니다.
<br><br><br>
**- 트리 vs 그래프 차이점?**<br>
: '부모 노드(The Root Node), 자식 노드(A Child Node)의 유무' 입니다.

<br>

![](https://github.com/projectlife724/i.wonsuk.choi/blob/master/Notes/Images/DAY%203/Tree,%20Graph.png?raw=true)

<br><br>

## - 알고리즘

### 알고리즘이란?

- 문제 해결을 위한 절차/방법
- 어떠한 문제를 해결하기 위한 여러 동작들의 모음

### 1. 정렬 알고리즘

- 선택정렬<br>
: 전체를 스캔해서 작은 것부터 정렬
<br><br>
- 버블정렬<br>
: 옆이랑 비교해서 뒤로 미는 것
<br><br>
- 삽입정렬<br>
: 정렬되어 있는 것을 스캔해서 하나씩 이동하여 크기에 맞게 삽입
<br><br>
- 병합정렬<br>
: [일정 구간을 나눠서 정렬 + 일정 구간을 나눠서 정렬] = 합치는 정렬
<br><br>
- 퀵정렬<br>
: 중간 기준점을 잡고 작은 것, 큰 것을 정렬
 - 평균적으로 가장 좋은 성능을 낸다. <br>
 - 가장 빠르지만, 기준점을 잘못 잡았을 때 최악의 효과<br>
 - 자료의 크기가 비슷비슷할 때

<br>

### - 시간복잡잡도

: 알고리즘이 실행되는데 소요되는 시간 분석

- 점근 표기법(대문자 O표기법)<br>
: O(n^2) << 알고리즘을 사용해서 얻을 수 있는 최악의 경우 **'빅오'**라고 부른다. 
