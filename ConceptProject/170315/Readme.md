# 2017. 03. 15

## - Network

- 어떤 연결을 통해 컴퓨터의 자원을 공유하는 것

#### - 클라이언트 서버 모델(Client-Server model)

- Network architecture 중 하나
- Server : Client의 요청에 따라서 데이터를 제공해 주는 컴퓨터
- Client : 서버로부터 요청한 데이터를 받는 컴퓨터
- 각각의 컴퓨터가 Client, Server의 역할에 맞게 구성되어 Network 통신이 이뤄진다면 우린 이걸 클라이언트 서버 모델이라고 부를 수 있다.

<br>

## - Protocol

- 프로토콜(Protocol)은 컴퓨터끼리 또는 컴퓨터와 단말기 사이에 상호통신 할 때, 데이터를 에러없이 원활하고 신뢰성있게 주고 받기 위해 필요한 약속을 규정하는 것으로서 통신규약이라고도 한다.

- Protocol 종류
	- HTTP : Hyper Text Transfer Protocol
	- HTTPS : Secure Hyper Text Transfer Protocol
	- FTP : File Transfer Protocol
	- SMTP : Simple Mail Transfer Protocol
	- SSH : Secure Shell

#### - HTTP

- 요청하면 항상 응답해준다.

#### - TCP

- 보내는 쪽에서 보내면 받는 쪽에서 다 확인하고 받았다고 보내준다.(받는 쪽에서 보낸 데이터와 일치하는지 확인하고 보낸다.)
- 완전 무결한 데이터를 주기위해 노력한다.

#### - UDP

- 보내고 확인하고 받는 것이 없어 속도가 빠르다. 
- 영상, 이미지


#### - URL

- (protocol+domain(ip)+자원)
	- ip : 실제 주소 
	- domain : ip 주소를 알기 쉬운 이름으로 되어 있는 것 
- URL은 네트워크 상에서 자원이 어디 있는지를 알려주기 위한 규약이다.

- URL 구성
	- URL은 제일 앞에 자원에 접근할 방법을 정의해 둔 프로토콜 이름을 적는다.(ftp, http)
	- 프로토콜 이름 다음에는 프로토콜 이름을 구분하는 구분자인 ":"을 적는다.
	- 만약 IP 혹은 Domain name 정보가 필요한 프로토콜이라면 ":" 다음에 "//"를 적는다.
	- 프로토콜명 구분자인 ":" 혹은 "//" 다음에는 프로토콜 마다 특화된 정보를 넣는다.

#### - Network using http protocol

- Client : http://naver.com/index.html
- Server : index.html 파일 전달

#### - URI

- 통합 자원 식별자(Uniform Resource Identifier, URI)는 인터넷에 있는 자원을 나타내는 유일한 주소이다. URI의 존재는 인터넷에서 요구되는 기본조건으로서 인터넷 프로토콜에 항상 붙어다닌다.

#### - URI vs URL

- URL은 URI의 한 종류이다.
- URL은 특정 리소스의 정확한 위치를 URI는 자원을 나타내는 식별자 역할
- URL : 특정 자원의 위치값 (실제 파일이 있음)
	
		http://naver.com/index.html
- URI : Restful 구조에서 특정 자원을 나타내는 함수(실제 파일은 없음)
		
		http://naver.com/basefile
		
#### - Rest (원칙들에 대한 모음)

- REST(Representational State Transfer)는 월드 와이드 웹과 같은 분산 하이퍼미디어 시스템을 위한 소프트웨어 아키텍처의 한 형식이다.
- 엄격한 의미로 REST는 네트워크 아키텍처 원리의 모음이다. 여기서 '네트워크 아키텍처 원리'란 자원을 정의하고 자원에 대한 주소를 지정하는 방법 전반을 일컫는다.

#### - Rest 사용 원칙 

- Resources : URI들은 쉽게 자원의 내용을 이해할 수 있게 만들어야 한다.
- Representations : 객체와 속성을 나타내는 데이터를 **JSON**이나 XML 구조로 전환해서 표현한다.
- Messages : **HTTP Methods**를 사용한다. (for example, GET, POST, PUT, and DELETE)
- Stateless : server와 client의 요청사항은 저장하지 않는다. Client session 상태를 유지한다.

#### - HTTP Request

- URI을 이용해서 Server에 데이터를 요청한다.
- 크게 header와 body로 구조를 나눌 수 있다.
- HTTP Method를 사용해서 요청 메세지를 보낸다.


|HTTP Method|CRUD|
|:--:|:--:|:--:|
|POST|Create|
|GET|Read|
|PUT|Update/Replace|
|PATCH|Update/Modify|
|DELETE|Delete|

[- 참고](http://goo.gl/xjH2ke)

#### - HTTP Request 구조

- Request-Line (ex: GET / index HTTP/1.1)
- Header (general-header | request-header | entity-header)
- [message-body]

#### - Request Header

- Host 
- Accept
- User-Agent 

#### - Contents Type

- 서버, 클라이언트 간의 어떠한 데이터를 주고 받을 수 있는지를 명시하는 타입

- Application Type
	- Content-Type : Application/json
	- Content-Type : Application/x-www-form-urlencode

- Multipart Type
	- Content-Type : multipart/formed-data -> 파일 첨부

#### - Message Body

- GET HTTP Method의 파라미터는 URI에 포함시켜서 정보를 보낸다.

ex) http://siteURI/age?firstName=joo&lastName=ym

	- firstName = key
	- joo = value
	- &으로 구분
 
- GET을 제외한 나머지 Method의 파라미터는 content-type에 맞는 형식으로 body message에 포함시켜 요청을 보낸다.

#### - JSON data type

- JSON(JavaScript Object Notation)은 **속성-값 쌍으로 이루어진 데이터 오브젝트 전달** 하기 위해 인간이 읽을 수 있는 **텍스트를 사용하는 개방형 표준 포맷이다.**

<br>

## - iOS Network

- NSURLSession
- NSURLRequest

#### - NSURLSession

- Server에 Data를 요청할 수 있는 가장 손쉬운 API
- NSURLSession은 HTTP requests를 통해 데이터를 보내고 받는데 중요한 객체이다. NSURLSessionConfiguration을 통해 3가지 타입의 Session을 만들 수 있다.
- NSURLSession은 NSURLConnection을 대체하기 위해 나온 새로운 클래스

#### - NSURLSessionTask

- NSURLSessionTask는 세션의 작업 하나를 나타내는 추상클래스이다. 세션은 데이터를 다운로드하거나 업로드하는 작업(Task)을 생성한다.

- NSURLSessionDataTask : HTTP GET 요청으로 서버로부터 데이터를 가져오는 작업을 수행 (텍스트 같은 data)
- NSURLSessionUploadTask : 디스크로부터 웹서버로 파일을 업로드 하는 작업을 수행 (HTTP, POST, PUT) 메소드를 이용
- NSURLSessionDownloadTask : Remote 서버로부터 파일을 다운로드 하는 작업을 수행 (영상, 이미지 등)


#### - ATS (App Transport Security)

- iOS9 이상의 버전에는 ATS 기술이 기본적으로 적용된다. ATS는 앱과 웹 서비스 간 연결보안을 강화하는 기술로 이 기술이 적용되면 기존에 iOS 앱에서 사용하던 암호화되지 않은 HTTP 통신은 OS 내부에서 강제적으로 차단된다.
