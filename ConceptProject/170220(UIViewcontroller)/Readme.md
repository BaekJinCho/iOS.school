#2017. 02. 20
##- UIViewController
- 앱의 기초가 되는 내부 구조
- 모든 앱은 적어도 한개 이상의 ViewController를 가지고 있으며 대부분의 앱은 다수의 ViewController로 이뤄져 있다.
- ViewController는 UserInteraction과 앱의 데이터 사이에서 컨트롤의 역할을 한다.
- ViewController는 View 관리, 이벤트 핸들링, ViewController간의 전환등과 관련된 메소드와 프로퍼티를 가지고 있다.

####- UIViewController - Root View

<br>
![](data:image/png;base64,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)

- view의 계층을 관리하는 기능
- 모든 ViewController는 한개의 rootView를 가지고 있다.
- 화면에 표시하기 위해서는 모든 View는 RootView의 계층 안에 있어야 한다.

<br>
####- Child UIViewController

<br>
![](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/Art/VCPG_ContainerViewController_fig_1-2_2x.png)

- 뷰 컨트롤러는 다른 뷰컨트롤러를 Child 뷰컨트롤러로 관리할 수 있다.
- Child ViewController는 RootView를 부모의 RootView에 addSubView하여 화면에 표시 가능하다.

<br>
##- UserInteraction
- ViewController는 UIResponder를 상속받은 객체로 이벤트 체인으로부터 오는 이벤트는 효과적으로 처리한다.

- 즉, 사용자의 모든 이벤트는 ViewController가 받아서 각 뷰에서 처리되는 Action Method Delegate에서 처리된다.

<br>
##- Data Marshaling(중계자)
- 뷰 컨트롤러는 자신이 관리하는 View들과 앱 내부의 데이터와의 중계자 역할을 한다.

<br>
![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARQAAAC3CAMAAADkUVG/AAABHVBMVEX////zp5TC4sfm5ua64Oz3q0IAAADE5cn4qJTp6emej4ufnJv3qTf3pi/+9+6+vr797dpgYGD19fWcp56yzrfHxsemqKelhHzv7++er6Gjuqfg3+CZnZr9rprW1dapwq6htaWzs7OEhISVlpnZ2dm6gHHsopCXsJuljIu62b+YmZzXlIOtd2mIiIjMzM00JCCLoo/Ki3uz1uF0h3d1UEcvNzD84sPP8dSCl4VWVlZnZ2coLilQNzEiGBXdmIdzT0Y5OTlRXlOhtb1fQTpGMCskJCSaal6cpqt4eHjc7/WLlo34tl9ebWAYGBhAQECnwssmGhdBTEPT6/MZHRsACgApKSlLTExWZFkhJyKLX1T95smwiYB3inr71ac8Rj7qHv1EAAASEUlEQVR4nO2dDWOayraGUdJBdno2OxQolaIloFZF1BqPiUnMh4mxOSZtmtO0uTc3//9n3DUoCAZBI+DeCW/TRB1GXQ9r1nwyEESiRIkSJYpFrPJHTBLoddu6qLTPxUxMKr431m3tYhLfZ1KxKfO/0rrtXUhKMT4moM1127uQ/ojRUcBV3q/b3oWUQPFQAsVDCRQPJVA8lEDxUALFQwkUDyVQPJRA8VACxUMvBgot+Ulc6r1eCJTcxw9ZP334SL46KPwHKkDpyyWovAgo4jsqHaiPrwwKUw5mQmUXH+B6EVCEYCbpNMcnUBIo8UGR4d8ihlpHvwIomWb/rF91vdRzPZuMeGcGTfilF+7dqVFD+Z+/1gGlivSejnqpjAw+kMG/5TpwkGXIYD47aJpZ5cEBHICaehHSZNNx5jtfeFD+/fbP+KHIZzoYPijIOviLrOsH/WIB3WeaBwdNuaD3D6rNq/7YV4qomGoeyoOePDg7KjZ1uTmQm3rkUP7loBIbFISLjgxMegUkH/R79zvFw2bvsFpFxft6b3CWqg8mRx7o8v29jHqDfk8/qx7KfSTvxADlzRu7BMULJSX3C7Jcb/bBPfry99TgQNfrhXtd7h1C8ZkcWjiAg+XDXv1e11HxsAcEv8+ZYgsXyhvLV2woZsMWN+ojglIvQPHZGfSbGQeU+35B13s7ulz9bsUUECqcyQDl+0Av6Kn7+x39/mxOXZR5/1dI+r+3AMUqQRYU7gFwlB/yDS8qYQTaArhKAYrKkVyF4mNCOSw263LmzIRyKJ81J5bLO4e6DMXnCGLJgVyAAI0G86B8/ldIwkzeWCXIglJGHEU12tzuuA9IpSc/oUFJ6Veo3pSLfXTYlI+qcvNIPqrLA3Q1kO8Lcu8AHlqVcPMQap6zXuoAfa9mUt97qXp1zntmPr8JWX86oVC/HijqpsGVqPLoJEvtltO7Zfw7PCgZs4Yd17PmgxSuiHGVnMngZ5mpN4yTU5MMPg258KGYJciGkv1NpVG5dEPdNvJX+ZsSh0plRIUIJQqFDuXtf5xQ0hTiGied0kn2d6l00mq0Giej7Oi1QXn7H8JZfNJUa/emRJVOSvu7D7vZ8uMJ9zgqRQIlU2w2i3MP6xWLiy9xyXx+G5YcTBxQuN9XFEDhENUZlTrtfeoEhVn7TA1pon4f4UbJ+FD43dTtXPJOQd9ZqDNo5n3/Z0j699spE0fjjXpsYSidh6vbX+A3o87DSai1j6Uiaspy8yqVqRbAJYq9QlEe9KE7WIBqu2lBaTZxD7EZ5DOhNt5sJs4WLW644dqYsh9E4ikFsyVWzQzqO1fQyO8fXVXrqND/flCsHx30x1D6B0f1lH54FtRTDrXvYzOJf5AJ3MKsaIsoJev9HvyuV/UjuT+QB/fQA6hiKE1o0e7oej+wGIUJZcpkDSNvBTw0kBoU6nKqetary/KBCaUJP7hrBFDuC+j7YV3X7+OE4mCyBihF6O3JhcMekrGnOKDsDCxPAW5ysxcrlL8cwylrgJLR0c4OBNt+X0dN6AjKZ9XCYRV6z1U02DmQjwqA6Pv9ABUHcUJxaQ0D13JP16GdIhf0nlyEWgbqGL1XhYqmp0MNVC32oMMDR6R6wQOSLwfK1KTFD309UFbXGqFQrw0Kwy0A5dMrmzZlLwMn2KlXN8FO5N6lA5ZilC+XWLfzMqAQkvDug5/eCewS7/ZCoEAREh1ilS3Xc3EZJC8IilvM1iq5EygeSqB4KIHioQSKhxIoHkqgeCiB4qEEiocSKB7ajHnaNCyrA7QaFGaRRY2hqSiEZXWQWStBYf+IkUnmfVybhawGhSD/qMa1VUjvsxaSzYFaEQpB8JvLq7b9jEzMch34VbQylOdI2V7Dhy6hBIqHEigeSqB4KIHioVcLhZ0vDMUnmY2mGvwbQGHQClp8CnUJ/Q2gKEMfZ/D3FGLIRPKN/gZQ/L5CQExJoHgogeKhFwplD4fL4dxkXyhbOG83/O+0digCNmz++faFovjnfbbWDoXGhs1fXeELRfLP+2ytHQpxjtDd/FT/mHKM0M+wvw/xd4AyRKg2P9Ufin/eZ2v9UKBB67Plrz8UJpom7fqhQFDx6cH4Q2F98z5b64dCXF/7JAa0U37uhftdJh8aRZlcTtt+uyAHQKmp4X4X8yOHe9fD+S2neMTk/BL9oRgR7EDOR9QkDE/rGGTCUJS4P3SZUaMnUGIYcsK9h5jvDMAL73yluJqoM1CMgMzCMlvjzdMmQn6xPwJt5gPWVJcvndOPbihCNijzuxCCjIZQvHWywgWvvr90FAMXFCYfnLmxuq+wP6MZ5Zz7eYts+Vd2RDkXlI+LZA5hPUQ3il7mfGnZBeyiHNdpOKHQn5bM/FwpUfQy5ysXXADmQyEXgvJu9W+pxdui/WdAIeK9/co/BEq8SqB4KIHiIRvKeM+ytKeVgVB8My8ARZQMnuH5HOnRL2BpDScaT3fTtlI0OuQxHBtKvowvpi3nnwOFGmfmOK8tfQOhaIpaERSGZxhFUCuMq5Mj8hW1ojCQqAgVVXB031lDmKQwCqQYYXKxoFBtvIUbyt+WrS3uHKc9EMpJC9xkv9TmJrurOHc884ciKmAQSduSmIpqm65VVEabptGGoipjZqSgKjlHSg7eJoxe1gyUUpuisrcUB6d9Nw8uAyeeKnMLQskiiuJQGjJzu9lxTvwTCIVlVEaiadIhmtaEMRapIuRm00hehdqZFioAknQlkUYltHvsTQMt4qhRq4PKpf2H/cbur077pvNrsgFgcEy5ylMPow7i8retx1bpsXOy32k9BELRVGbGtrGBGr6CVVFnkIzT8FdQDa8U2lBDmoebBtpfu2AUhdK3+XR+n/udftynbhcOtK1W5zbbueJuGnjzQEQ9/k63Az1FqUgeSMaWiyrjYTgJRYStKJ4p2FuUSiihZQol+5iFEgQWPbYfR9R+o/WrcUMtCoX7zd1SAGW/3X48Sd80Rq1GuxMQUwTF0zSTiQTO4JUERUflvZGYOXk1jJ6jo52yf7MLUKAYdcoPnVa7tNveXRRKmnqEWAtQHrOdTouCnKX9VkCghRM+xzRgUtPmManl5jMBKrlaCIFlCoVqIbzxX7lx+3DbgNBZ5hC3OJRdvOMmxBTUarcg5nJllPWHIiiCt+HQVqFVxpMYS7AqL/gwIUmBV1cvQQ5PKeOHeSgKDc58kLbbLIu0aCEzrrq4Rn42sycURqAlB5VJzYofimB5DmrfKRUrEUpGxRBzDiqObBMmOZqvhAnFbFhQ1la8jq1VF4IyP7MXFEk1TZhQgfoUGmfQgNPATHAiiBo2FZrUeDONh7pYgRdpiwo0angFJ/F2rQ5MSFpZeeB/TX0fdYzDpEJrysW3LxsbG1++nF4wLJETcBrNYyrQMLk4HSd+y0HLZRw3TCq0IVgpp8I4LAtmvKHVVQca1gPFChm4BNHKKTZtom8ATBo7AvgKtFi+2UlQeMZBFlOBwjdNgWwC1O6ClbxqAVoLFFZ1BAHBgWRj4yvBW9EEqPAXzpSxC42pGBcbbl0YglUv0cKKVz+tBQrPWLGR1lQXkw3bUXCicupKqWh2CjPLBKhM33RVV1kLFIfdbj/Z+EFowtS2U1cKWbGrGe0pE6AyZVZZrbGyDijS1G7lm9swlhCmTVmX5V8JhvdOsWXX1TS/WidoHVCm1j054+BF08LzxZ1SkWybZ1BO9M1+X2m18rMOKFPr3HZj00nbiyQ3MOgI2ri8HQUKkO2BlZW6QGuAwqpzi8EPwrDC5Yw7QLCxa6Wct6NsbJzmbNor1T+L2eWY+XRCET88Z4aQtgOmK5JifSUUK6TMeNHXaZX11L8sfbG5MavNPS8wHUx9cnB3zSVvLsAkP/v97DhL87PWfSUE62TPeJETlzCHCYTaaRNnJSjSpfddR6ZWUZxzitwFRbz0HsF3Zn4ylZxT5p5ydhpvnkCZh8spO6jkVuz/SB+znJ/y7xwfINLCnugYIaY/fvLNzH14uubAAWXWKAcUyV20nFBmC50XlJWXOki8nwxnIB9fSbdEZo9W1GKe4gNlEU+Jaz8MLNH/upeFNK1GGA8omrfpzpgSDGXVmLKk9la/doWchsPZuhX7g3WylZkUu8nnE2ht3Cs2aZfUJlp5obloV8nS0yp5arrbjaAFo3i3YByym7S04rcUOHTlQrh2RbVKyJNz7miizTRifjiaN9LcFq3dVF6xR7isQrh2xe7zPS0/jubuDLH5vSJbdtuNpEMYvV5GW6svVMwpcwx3RVr3yAHuP+cCXMUeO6CNOCsfAl9iuPJJcAy8zXaTvzoHoFwO8dXJkvGKKt+mOYVYQwrUHT6X0i2q6ZgJzbtj7Q9CnBIjXSNQTpZeBeiLY1IkgktJfMWG4JnTMTSaF9xUXKNMgpMKSzC2K5CKMOsr3wSHI8VaIYcly3D4+qJx4TzrPwjSDrWC5hyl/eFwFQgvihvmKQOBxAo5MYRZ957Ws3rWW04Mp/FUBy0pUyzfLghCmTgEnhSijQvbJVhrZoQ257xygj018uXUfMUYtwppJXJHITfD3A3dkmkebRkpMcLFKehCMMxZU3OmbDx9iJcvmWmnAm9N/NjzO5OUC2XygukrdC7yiJK7DHXffFt43c00RtC0pIHwUiWSJbQKSdtTqvg1nCjRkEKqOMVwZ5suhcJUaEmNuuG2yB0Wys9ZfC+qmvfKArw6hRFIzyUJBGFUSMFnLQYuQZUILthziwm+8CVNfXrOEjypNm99ioiXdnku08C8AtanGLXoa57F7tryrHMjeRtO4gJEKIJnmmh6kY+nkJsx1MZh39/HKXLuQi2gwnivhwMq/FyYeBI2joulooQC7UDBeyUgLUGEB2QeiSJ2Mc81lfAas/IijIUUKRSImx724fUXeJGjKFSerhmlSYMlWMVjzSheMarE0zeOGApeXayMa+KJZXiRcGXSnZMqFbxIaZpISnA4bgDQgrko2ZENUkJbWxykqKHgNfaVisLnJAma51qOEVTFUQRopVJhDA2nSRoPT3jLF2gGspkpkM3Ah8U3rBT2jek9xQKLigoCOk+CArRozTRVUHLibMqmqtZUdVPxmjSITvY92M17Izc4z8swV4XyT9P0xvTlNFXaz7bM2+A+/8b0L0L2PdhPdin4X85T5YcWRzXSVKNMlZa/Mf2LkA0FX/mCb0zfabcaiGtnOVRKP+PG9C9CzhvTA5HSSXafy49auw+Nx1H216uHMmr8auAb09+ORqMSdzPKP7Yarx5Kvo2gEJ3kf3c6u6XO/j5185wb078IORpv7ZF5Y/pR++axTLV+dVo3r732wWNJuK6BipnD12eUy+PnrxzKlM6T9lsCxUMJlARKAsVL0UFRasETRhLDMN6D4kYND7poZreZj3fZRYRQbreUoWv9Au8xhTU8HnaRtWdjxfEp3XNBQLXJhtp7zhGF7cgnOKKDouJdD8FX4HRDZqGmEdt7JMHUeLzRYk0yaubgG97EkkUkkYMjxa1tlhXGr/PnBE6gt5VNwdyFx6jhhX9CjRSvawRZ24zWd6KCcjzOwm8RBCKGNQaR3WtJ3WOuBRYNBdRVzGWp5s6eXUFCjLpF33XZuxrzEy/+HpreM1RqV8pwi0Aif8x0h8TetoKM46F0ztSi3SovKijn42FYo4uh7NVEkmW2CShOJILn+OcaxxITSq3CaiJzTNQYIidKd/iz9sxiUxO24S9iz9ljRpKQcUUQjNjlSWSw0d4sLCood9gsRsiZUFj1+ifJDIkrvEEw8ZNg4cGxDeWO13521WsMpXu3vYc/q2Yuuzs2cAD5yZ6Lx93hUGXM1URdQNc9j3afVsVrm5gZUdnlZ1vMjduu+Nwe9g0wQd0EKIgm+DsnFFxMeIQNlcBTeBE8yISiQZwhmP/idDj2lr0DOEN4I2JL6/IahJlo98qjF9gwkLp8xhtvozukEuxtdw8R6vHwnNaQwVwNbyX2mIACMS4+NXT+33ONgNe3bg3hVjze2rszd0ZW0PXxOUlsH3fPFeJKJK+G5wxRO97bgl/Scfcu4s1r+U8BKzGo9OWztrihzUYGq7Hwh9SgusB7HOC/ovWDN10aLwoiJYIWcS2jiZMd31gJ/2UJiQaHo+Ft8HHma/ioyOcJjY+f8j7KfvgY3rY/z1INBR8TvkjNT7HudOmleOd8EiVKlChRokQvUP8P6WnTV+0fWisAAAAASUVORK5CYII=)

<br>
##- Resource Management
- 하나의 ViewController안에 있는 모든 View나 객체는 모두 ViewController가 관리 한다.

- 앱 사용중 메모리가 부족할 때 didReceiveMemoryWarning method가 불리며, 오래동안 사용하지 않은 객체와 다시 쉽게 만들 수 있는 객체를 제거할 수 있다. (사용하지 않는 View의 경우 자동으로 제거된다.)

<br>
##- General ViewController
- 일반적인 ViewController 형태

- 각 ViewController가 Root View를 가지고 있다.

	1) UIViewController Root View = UIView
	
	2) UITableViewController Root View = UITableView
	
	3) UICollectionViewController = UICollectionView

bundle = 실제 resource가 저장되는 곳

<br>	
##- 화면 전환 - Present Modally
- Next ViewController 인스턴스화
- PresentViewController : 올라가는 것
- dismissViewController : 내려가는 것

<br>
##- Container ViewController
- child viewController 방식

- ViewController의 Container 역할을 하는 ViewController
- ViewController 간의 구조를 잡는 역할을 한다.
- 일반적으로 Root View를 가지고 있지 않고, ViewController를 Sub ViewController로 가지고 있다.

	- UINavigationController
	- UITabbarController
	- UISplitViewController

<br>
####- NavigationController
: 깊은 정보를 보여줄 때

<br>
![](https://developer.xamarin.com/recipes/ios/content_controls/navigation_controller/Images/01_-_Navigation_Controller.png)

<br>
####- NavigationController Interface

<br>
![](data:image/png;base64,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)

**※ Tab bar 위에 -> Navigaton view가 올라가고 -> 
그 위에 Custom View(ViewController)가 올라간다.**

**※ NavigationController은 PUSH / POP 메소드를 쓴다.**

<br>
####- Storyboard에 is inital ViewController을 체크 해제 후 작업해보기 
```objc
//1. 윈도우 만들기
self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
//2. RootViewController 만들기
UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
UIViewController *rootVC = [mainStoryboard instantiateViewControllerWithIdentifier:@"ViewController"]; //스토리보드에 있는viewcontroller (storyboard id)에 있는 객체를 가져온다.
    
UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:rootVC];
    
//3. 윈도우에 RootViewController 지정self.window.rootViewController = navi;[self.window makeKeyAndVisible];
return YES;
```
- 위와 같은 작업을 하는 이유 : Storyboard를 사용하지 않은 상태에서 진입점을 만들기 위해서