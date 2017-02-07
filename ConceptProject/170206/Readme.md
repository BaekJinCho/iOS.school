#2017. 02. 06
##- Delegate, TextField

####- Protocol
: 복수의 컴퓨터 사이나 중앙 컴퓨터와 단말기 사이에서 데이터 통신을 원활하게 하기 위해 필요한 통신 규약. 신호 송신의 순서, 데이터 표현법, 오류 검출법 등을 정함

- 객체 지향에선 두 클래스 간의 약속!
- -이런 이름의 함수를 만들어라!

**※ Objetive-C에선 Delegate라는 이름으로 사용한다.**

**※ Delegate는 protocol이 아니고 protocol의 방식이다.**

**※ Delegate를 쓰는 이유<br>: 하위 계층이 상위 계층에 있는 것들을 쓰려고?**

<br>
####- UITextField
: 사용자 텍스트 입력을 위한 UI Component

<br>
![](http://blog.apoorvmote.com/wp-content/uploads/2015/05/new-textfield.png)

**- 주요 항목**

	@property(nonatomic,copy) NSString *text
	@property(nonatomic,strong) UIFont *font
	@property(nonatomic,strong) UIColor *textColor;
	@property(nonatomic) NSTextAlignment textAlignment;
	@property(nonatomic) UITextBorderStyle borderStyle;
	@property(nonatomic,copy) NSString *placeholder;
	@property(nonatomic,strong) UIImage *background;
	@property(nonatomic, weak) id<UITextFieldDelegate> delegate;
	
####- UITextFieldDelegate

	@protocol UITextFieldDelegata <NSObject>
	
	@optional
	
	- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField;
	// return NO to disallow editing.
	- (void)textFieldDidBeginEditing:(UITextField *)textField;
	//became first responder
	- (BOOL)textFieldShouldEndEditing:(UITextField *)textField;
	//return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
	- (void)textFieldDidEndEditing:(UITextField *)textField;
	//may be called if forced even if shouldEndEditing returns NO or endEditing:YES called
	
	- (BOOL)textFieldShouldClear:(UITextField *)textField;
	// called when clear button pressed. return NO to ignore (no notifications)
	- (BOOL)textFieldShouldReturn:(UITextField *)textField;
	// called when 'return' key pressed. return NO to ignore
	
	@end
	
	
	
- textFieldshouldEndEditing : 	
- textFieldshouldBeginEditing : 
- textFieldDidBeginEditing : 
- textFieldDidEndEditing :
- textFieldShouldClear : 
- textFieldShouldReturn :

**※ textFieldShouldReturn에서 반환 되는 return 값이 YES와 NO일 떄, 차이**<br>
: retun이 'NO'일 때 'YES'일 때 차이가 없이 동작한다면 return NO는 무시된다.