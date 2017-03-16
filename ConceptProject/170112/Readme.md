# 2017. 01. 12

- 데이터베이스
- 네트워크
- 암호화

<br>

## - 데이터베이스(Database)

: 통합된 데이터들의 집합<br>

	- 대부분 보조기억장치에서 이뤄질 내용
	- 보조기억장치에서 쓰이길 기다리는 데이터들
	- Database와 DBMS는 다르다.
	ex) Q : 너네 회사 Database 뭐 써?
	    A : 우리는 MySQL써(X)
	        우리는 관계형 데이터베이스써(O)


- 관계형(RDB)<br>
: SQL(Structured Query Language)을 사용하여 질의

- NoSQL<br>
: 키-값형, 객체형, 문서형, 컬럼형

- SQL(Structured Query Language)<br>
: 구조화 된 질의어<br>
: DBMS를 통해 데이터를 관리하기 위한 구조화된 질의문을 작성하기 위한 언어 <br>
: 관계형 데이터베이스 관리 시스템에서 사용<br>
 - 학습링크 : <https://goo.gl/tjPqqq>, <https://goo.gl/qNF8XH>
	
<br><br>

## - 네트워크(Network)

- 네트워크(Network)<br>
: 기기들끼리 연결된 관계(모양새)

- Internet(Inter-Network)<br>
: 네트워크끼리 네트워크 모두가 연결되어 있는것
- LAN(Local Area Network)<br>
: 근거리 통신망(건물, 층끼리)
- MAN<br>
: 도시권 통신망(시,도,구)
- WAN<br>
: 광역 통신망(국가)
- TCP(Transmission Control Protocol) / IP(Internet Protocol)<br>**전송 제어 규약**<br>
: 인터넷을 통해서 전송 제어를 위한 서로간의 규약
- WWW(World Wide Web)<br>
: 문서(웹 페이지)들이 있는 정보의 저장소<br>
**분산**과 **연결**<br>http://www.naver.com/cafeteriae
- URL(Unifrom Resource Locator)<br>
: [Protocol]://[Host]:[Port]/[Path]<br>
	- PATH : 특정한 웹의 위치를 나타내는 것<br>
	- PORT : 가상의 논리적 통신 연결단(번호로 구문)
- Protocol<br>
: 통신규약<br>
장비 사이에서 메시지를 주고 받는 양식과 규칙의 체계<br>
즉, 통신(네트워킹)할 때, 정해진 메세지 규칙
- HTTP(Hyper Text Transfer Protocol)<br>
: 링크를 누르면 해당되는 곳으로 이동할 수 있도록 만든 문서
	
	<br>
	- HTTP Method<br>
	
	> 1) **GET** : 요청할 때 추가 정보를 붙여주는 방식<br>
	
	(빠르지만 정보가 최신이 아닐 수 있다.)<br>
	
	> 2) **POST** : 요청할 때 추가 정보를 숨겨서 보여주는 방식<br>
		
		- GET vs POST 차이
		1. 겉으로 들어나는지 안 나는지
		2. 메모리에서 불러오는지 서버에서 불러오는지
		
	> 3) **PUT** : 정보를 업데이트 할 때 사용하는 방식<br>
	
	> 4) **DELETE** : 정보를 삭제하고 싶을 때 사용하는 방식
	
<br>

- FTP(File Transfer Protocol)<br>
: 파일을 전송하기 위한 프로토콜


- SFTP(Secure File Transfer Protocol)<br>
: 암호화하여 파일을 전송하기 위한 프로토콜
- TELNET(Terminal Network)<br>
: 원격 로그인을 위한 프로토콜 (**암호화X**)
- SSH(Secure Shell)<br>
: 네트워크 상의 다른 컴퓨터에 로그인하거나 원격 시스템에서 명령으로 실행하고 다른 시스템으로 파일을 복사할 수 있도록 해주는 응용프로그램 or 프로토콜<br>
-> Telnet의 대용 목적으로 설계 (**암호화o**)
- SSL(Secure Socket Layer)<br>
: 웹 서버와 브라우저 사이의 보안을 위한 프로토콜
	- [SSL에 대해 쉽게 알아보기1](http://minix.tistory.com/395)
	- [SSL에 대해 쉽게 알아보기2](http://minix.tistory.com/397)
- SMTP(Simple Mail Transfer Protocol)<br>
: 전자메일 발송 프로토콜
- HOST<br>
: 네트워크에 연결된 장치<br>
	- 호스트 이름<br>
	: 네트워크에 연결된 장치에 부여되는 고유한 이름<br>
	ex) IP주소, 도메인 주소, MAC주소 등
- IP Address<br>
: 컴퓨터 네트워크에서 장치들이 서로 인식하는 번호<br>
: 다른 호스트를 인식하는 주소
- Domain Address<br>
: 숫자로된 IP 주소를 사람이 알아보기 쉽도록 문자로 바꾼 주소
	- DNS(Domain Name System)<br>
	: 숫자로 된 IP주소 ↔ 문자로 된 주소
- MAC Address(Media Access Control Address)<br>
: 네트워크 어댑터에 부착된 식별자

<br><br>

## - 암호화

- 대칭키<br>
: 암호화와 복호화에 같은 암호키를 쓰는 알고리즘<br>
: 잠그는 열쇠와 여는 열쇠가 같다.<br>
ex) DES, AES, SEED

- 공개키(비 대칭키) 암호화<br>
: 공개키로 암호화된 데이터를 비밀키를 사용하여 복호화에 사용할 수 있는 알고리즘<br>
ex) RSA
- 암호화 해시함수<br>
: 암호를 고정된 길이의 데이터로 매핑하여 원래 암호와의 관계가 없는 것으로 만든 것<br>
ex) SHA, MD5 

### - [대칭키 & 공개키가 궁금해요!!](http://minix.tistory.com/397)