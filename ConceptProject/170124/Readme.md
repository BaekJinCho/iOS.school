#2017. 01. 24

##- 조건문

- 함수 내부에서 실행되는 선택문
- 특정 조건에 따라 선택적으로 코드를 실행시킨다.
- 대표적으로 **if-else**문과 **switch-case**문이 있다.

####- if-else문
: 조건이 참일경우 if문 대괄호 안에 코드가 실행된다.<br>
만약 조건이 거짓인 경우 else문의 대괄호 안의 코드가 실행된다.<br>
※ **조건값은 참, 거짓의 나타나는 Bool값으로 표현**

	if(조건) {
	//조건이 만족되면 실행
	}else{
	//조건이 만족되지 않을때 실행
	}
	
####- else if문
: 추가 조건 방법으로 반복해서 추가할 수 있다.<br>
※ **조건2는 조건1이 거짓일 때 실행된다.**

	if(조건1){
	//조건1이 만족되면 실행
	}else if(조건2){
	//조건1이 만족되지 않을때 실행
	}else{
	//조건들 모두 만족되지 않을때 실행
	}

<br>	
####- 비교연산자
|==| A == B| A와 B가 **같다**.|
|:---| :---| ---:|
|>=| A >= B| A가 B보다 **크거나 같다**.|
|<=| A <= B| A가 B보다 **작거나 같다**.|
|>|  A > B|  A가 B보다 **크다**.|
| <|  A < B|  A가 B보다 **작다**.|

※ String은 비교연산자 불가

####- 논리연산자
|&&| A조건 && B조건| (A조건이 참이고, B조건이 참이면 참이다.)
|:---| :---| ---:|
|or 조합| A조건 or B조건| (A조건이나, B조건 둘중에 하나가 참이면 참이다.)|
|!| !(A조건  B조건)| 조건의 반대(참 -> 거짓, 거짓 -> 참)|