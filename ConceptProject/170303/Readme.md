# 2017. 03. 03

## - Data 저장

#### - 데이터 저장 방법

- 파일 저장(Property List, SQLite, 아카이빙)
- iOS DataBase 이용 - Core Data
- Network - Server DB 이용

#### - Property List

![](https://apppie.files.wordpress.com/2016/02/2016-02-11_07-55-22.png)

**※ Key, Value 형태로 만든다.**

#### - Property List - plist

- 심플한 "파일" 저장 방법 중 하나
- Key, Value 구조로 데이터 저장
- File 형태로 저장되다 보니 외부에서 Access 가능(보안 취약) - 휴대폰 잃어버리고 비밀번호도 해킹되면 위험(실질적으로 위험성이 높진 않다)

#### - 파일 위치

- 파일이 저장되는 곳 Bundle & Documents 폴더
	- bundle = 내가 앱을 만들 때 파일이 저장되는 곳<br>  bundle(가져다 쓰는 것(읽기만 가능), 리소스)
	- Documents - 읽고 쓰는 것 둘 다 가능
- Bundle은 프로젝트에 추가된 Resorce가 모인 곳
- 프로그램이 실행되며 저장하는 파일은 Documents 폴더에 저장된다.
- **즉! Plist 파일의 데이터만 불러오는 역할은 Bundle을 통해서, Plist 파일에 데이터를 쓰고 불러오는 역할은 Documents 폴더에 저장된 파일로!**

#### - Plist File In Bundle

1) bundle에 있는 파일 path 가져오기

2) path를 통해 객체로 변환, 데이터 불러오기

3) 사용

```objc
NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Sample" ofType:@"plist"];
NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:filePath];
NSArray *list = [NSArray arrayWithContentsOfFile:filePath];
```

#### - Plist File In Document

1) Document folder Path 찾기

2) Document folder에 plist 파일이 있는지 확인<br>
	
- 만약 없다면 : bundle에 있는 파일 Document에 복사

3) Path를 통해 객체로 변환, 데이터 불러오기

4) writeToFile 메소드로 파일 저장