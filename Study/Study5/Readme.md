##2017. 01. 24 ~ 25

#- 계산기 알고리즘

※ 우선순위가 없는 계산기<br>
※ 소수점 무시<br>
※ 처음 문자 입력 무시<br>
※ 문자 연속으로 나올 때 무시

###1) 입력<br>

###2) 구분<br>

- 2.1 숫자<br>
- 2.2 문자
	
###3) 연산자이면 연산자 저장 후 입력받은 숫자를 'num1' 공간에 저장<br>

- 저장 후 1)번(입력) 으로 이동<br>
- 이동 후 숫자 입력을 받는다.
- 2번째 입력 받은 숫자 다음에 연산자가 오면 입력 받은 숫자를 'num2' 공간에 저장

	- NSUInteger num1; // 숫자 저장 공간1 <br>
	- NSUInteger num2; //숫자 저장 공간2 <br>
	- NSString * op; // 연산자 저장 공간<br>
	- NSUInteger result; //결과값 저장 공간
	
	<br>
	#
		--수도코드--
		
		// 버튼(숫자, 연산자) 클릭했을 때 발생하는 이벤트
		-(void) clickEvent:(NSString *)~~
		{
		checkNumber;}
		
		// 동작 프로세스
		-(void) checkNumber:(NSStirng *)~~;
		{
		if(x = 숫자면){
		NSString *temp = @""; // 빈 값으로 세팅
		temp = temp + x; // 들어온 순서대로 저장
		입력받은 숫자 temp 값 화면에 출력
		}
		
		else if(연산자면){
			1) 위에 저장된 temp의 값을 Integer로 바꾼다.
			2) if (num1이 비어있다면) -> temp에서 들어온 값을 'num1'에 넣어준다.<br>
			3) else if (num1이 채워져 있다면) -> temp에서 들어온 값을 'num2'에 넣어준다.
		num1 (+, -, *, /) num2
		화면에 출력 / num1 = 연산결과 값 저장 num2 = 공간 비우기}
		
		else if(=){<br>num1 (+,-,*,/) num2
		화면에 출력 / num1 = 공간 비우기 num2 = 공간 비우기}
		
		else if(C){
		화면에 0출력 / num1, num2 = 공간 비우기}
	
	
<br>	
###4) 연산 후 다시 숫자가 클릭되면 연산결과를 num1에 저장 후 num2 초기화
- 다시 눌리는 숫자를 'num2' 공간에 저장
