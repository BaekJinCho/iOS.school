# 2017. 03. 23

## - Segue

- 앱의 인터페이스 흐름을 정의하는데 segues를 사용하십시오.

- Segue는 앱의 스토리보드 파일에 두 개의 뷰 컨트롤러 사이의 전환을 정의

- Segue의 시작점은 button, tableView의 row,gesture 등으로 시작하며 끝점은 진행될 다음 ViewController이다.


- Segue는 일반적으로 다음 ViewController로 진행되는 것을 가르키나, unwind segue를 통해 ViewController를 닫는 역할도 할 수 있다.

![](http://www.appcoda.com/wp-content/uploads/2012/06/Storyboard-Segue-Identifier.jpg)

#### - Create Segue

![](https://www.ralfebert.de/tutorials/ios-swift-uitableviewcontroller/create_segue.png)

####- Modifying a Segue's Behavior at Runtime

![](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/Art/VCPG_displaying-view-controller-using-segue_9-4_2x.png)


**※ shouldPerformSegueWith / prepareForSegue : 오버라이드**

#### - Unwind Segue

1) 되돌아갈 ViewController선택

2) 선택된 ViewController에 다음 메소드 정의

```objc
- (IBAction)myUnwindAction:(UIStoryboardSegue*)unwindSegue
```

3) unwind Segue 액션이 필요한 뷰컨트롤러에 액션과 Exit연결

#### - Manual Segue (수동)

![](https://cms-assets.tutsplus.com/uploads/users/41/posts/25462/image/figure-create-manual-show-segue.jpg)

```objc
[self performSegueWithIndentifier:@"segueName" sender:self];
```
- 사용자가 원하는 곳에서 위의 Method 적어주면 불린다. 그 전에는 해당 View를 가지고만 있음!

<br>

#### - Size Class

- interface Builder는 기본적으로 Size Classes를 사용한다.

- Size Class는 사용자 인터페이스 요소에 지정된 특성으로 요소의 크기를 구분하여 줌


- 현재 Size Class를 기반으로 많은 요소를 사용자 정의를 할 수 있다. 정의된 내용은 레이아웃이 변경될때 자동으로 조정됩니다.

- 다음과 같은 내용을 설정할 수 있다.
 - Install or uninstall a view or control
 - Install or uninstall a constraint
 - Set the value of select attributes (for example, fonts and layout margin settings)

#### - 기기별 Size Class

![](http://www.shako.net/blog/content/images/2015/01/size_classes-1.jpg)
