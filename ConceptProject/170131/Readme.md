#2017. 01. 31
##- 기억 끄집어 내기

- Person 클래스 및 property / method 정의 및 구현
- 직업 클래스 만들어서 Person 상속받는 것
- Override
- if-else문
- switch문
- 비교연산자 / 논리연산자
- 클래스 메소드

<br>
##- 조건문
####- switch문
: 상태 값에 따라 실행될 코드를 선택하는 조건문<br>
: 특정 값이 있을 때 사용(type을 구분할 때 사용)

	switch (상태값) {
		case 상태값1:
			NSLog(@"첫번째 실행");
		break;
		
		case 상태값2:
			NSLog(@"두번째 실행");
		break;
		
		case 상태값3;
			NSLog(@"세번째 실행");
		break;
		
		default:
			NSLog(@"나머지 실행");
	}
	return ~~~;
	
※ break; : 종료 후 return 값 반환<br>
※ default : 상태값이 매칭되는 값이 없을 때 진입

ex) 월의 마지막날 구하기