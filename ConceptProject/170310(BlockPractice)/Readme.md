# 2017. 03. 10

## - Block

- Blocks are Objective-C objects
- C, C++, Objective-C에 추가된 확장 문법이다.
- ^을 literal를 문법으로 첫 시작시 사용한다.
- 외부 값을 **capture**하여 사용한다.
- 다른 프로그램 언어의 closures나 lambdas와 같은 역할을 한다.

#### - Block 문법

```objc
^{
	NSLog(@"This is a block")
}
```

#### - Block 문법 선언

```objc
void (^simpleBlock)(void);
```
- simpleBlock : 변수명

#### - 메소드 vs 함수

```objc
- 메소드 
: - (void)name:(NSInteger)num;

- 함수
: void name (NSInteger num)
```
- return 값 다음에 띄어쓰기, 모든 parmeter가 ( )안에 들어간다.

#### - Block 문법 사용

```objc
void (^simpleBlock)(void) = ^{
	NSLog(@"This is a block");
};

simpleBlock();
```

#### - 다중 파라미터, 리턴 타입

```objc
void(^sampleCode2)(NSInteger, NSInteger) = ^(NSInteger num1, NSInteger num2){
	return num1 * num2;
};
NSInteger result = sampleCode(2,4);
NSLog(@"결과값은 %ld", result);
```