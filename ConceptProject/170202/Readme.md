# 2017. 02. 02

## - iOS 구조 파악

### - The Structure of an App - MVC

![](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/Art/core_objects_2x.png)

<br>

### - Step of After Launch

![](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/Art/app_launch_fg_2x.png)

<br>

### - 화면 구조

![](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/Art/VCPG-root-view-controller_2-1_2x.png)

<br>

### - 사용자 Event 처리

![](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/Art/event_draw_cycle_a_2x.png)

<br><br>

## - UI Base Guide

#### - 해상도

- Pixel : 실제 이미지 사이즈
- Point : 화면에 표시되는 이미지 사이즈

|iPhone|Point|Pixel|
|:---:|:---:|:---:|
|5|320Point / 568Point |640Pixel / 1136Pixel|
|6|375Point / 667Point|750Pixel / 1334Pixel| 
|6Plus|414Point / 736Point|1242Pixel / 2208Pixel| 


#### - 좌표계

: View 기준 좌측 상단이 0,0이다.<br>
: 뷰의 위치는 **상대적**으로 상위뷰를 기준으로 위치를 잡는다.

<br><br>

## - View

#### - UIKit Framework

: Cocoa Touch Framework에 추가된 UI관련 기능의 클래스가 모여 있는 Framework<br>

: #import UIKit/UIKit.h 로 추가 한다.
 
#### - UIResponder

: UIResponder 클래스는 이벤트를 재 생성하고 처리하는 객체의 인터페이스를 정의

: **사용자의 반응을 정리한 클래스**

	- (BOOL)becomeFirstResponder;
	- (BOOL)resignFirstResponder;*backgroundColor

	- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(nullabel UIEvent *)event;
	- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullabel UIEvent *)event;
	- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(nullabel UIEvent *)event;
	- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(nullabel UIEvent *)event;

- becomeFirstResponder<br>
: 해당 객체에 포커스

- resignFirstResponder<br>
: 키보드가 올라와 있을경우 숨기는 기능

- touchesBegan<br>
: 터치시작

- touchesMoved<br>
: 터치이동

- touchesEnded<br>
: 터치종료

- touchesCancelled<br>
: 터치취소


<br>

#### - UIView

: 가장 기본이 되는 View

: UIComponent들의 조합으로 화면이 구성되며 UIView를 상속받았다.

: 즉, iOS 화면구성은 UIView의 집합으로 되어 있다.

#### - UIView Class

- 데이터 타입

|CGPoint|CGSize|CGSize|
|:---:|:---:|:---:|
|x, y|width, height|x, y, width, height|

**※ CGPoint + CGSize = CGRect**

<br>

**- property**

- frame : 구조체(정해진 데이터의 묶음)
	- 정해진 데이터 4가지 <br>
	1) x좌표<br>
	2) y좌표<br>
	3) width값<br>
	4) height값
	
- bounds : x 좌표, y 좌표가 0,0이다.
- center : x, y 좌 표
- backgroundColor : 기본 default 색 (흰색)
- alpha : View의 투명도
- hidden : 아예 숨기는 것
- tintColor : 기본 베이스 컬러(자기 하위 view에 있는 애들한테 영향을 줌)

**- method**

- removeFromSuperview;<br>
: 자신의 뷰를 제거(superview에서 자기 자신을 제거하고 싶을 때)

- addSubview;<br>
: 해당 뷰를 하위 뷰에 추가하고자 할 때!

<br>

**- 앱 UI 분석해보기**

![](https://github.com/BaekJinCho/iOS.school/blob/master/Study/Image/UIAnalysis.png?raw=true)

<br>

![](https://github.com/BaekJinCho/iOS.school/blob/master/Study/Image/UIAnalysisCell.png?raw=true)

**- view 만들기 연습(아이폰 사이즈에 맞춰서 만들어 보기)**

![](https://soulpark.files.wordpress.com/2012/11/ec8aa4ed81aceba6b0ec83b7-2012-11-30-ec98a4ed9b84-3-57-11.png?w=600&h=313)

	- self.view.frame.size.(width, height) - 숫자 
	: 내가 원하는 사이즈(width, height)를 계산하는 것
	
	- self.view.frame.origin.(x, y) - 숫자
	: 내가 원하는 사이즈(x, y)를 계산하는 것 

<br>

#### - UIView 구현해보기1

![](https://github.com/BaekJinCho/iOS.school/blob/master/Study/Image/uiview.png?raw=true)