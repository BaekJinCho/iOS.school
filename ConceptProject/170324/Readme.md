# 2017. 03. 24

## - Project Setting

#### - Precompiled Header

- 컴파일전에 자주 사용하는 헤더파일을 미리 컴파일 하여 캐쉬에 저장
- 해더파일 컴파일 시간을 단축시키기 위해 사용
- 전역적으로 사용하고 싶은 데이터를 헤더 파일선언하고 Prefix.pch에 넣어 전역적으로 사용 가능

#### - Create PCH file

- New -> File -> Other -> PCH File

![](https://github.com/BaekJinCho/iOS.school/blob/master/Study/Image/PCH%20File.png?raw=true)


#### - Setting PCH file

- Build Setting -> Apple LLVM 8.0 Language -> Prefix Header (꼭 경로가져오기)

![](https://github.com/BaekJinCho/iOS.school/blob/master/Study/Image/Setting%20PCH%20file.png?raw=true)


#### - 버전 가져오기

- [[UIDevice currentDevice] systemVersion]

#### - Preprocessor Macros - Debug

```objc
#ifdef DEBUG
	// debug only code
	NSLog(@"debug mode");
	
#else
	// relsease only code
	NSLog(@"release mode");

#endif
```

#### - Xcode Preprocessor Macros - Device

```objc
#ifdef TARGET_OS_SIMULATOR
	// debug only code
	NSLog(@"simulator");
	
#else
	// relsease only code
	NSLog(@"device");

#endif
```

**- TargetConditionals.h에 정의 되어 있다.**