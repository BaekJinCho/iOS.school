# 2017. 03. 13

## - Thread

- 스레드(thread)는 어떠한 프로그램 내에서, 특히 **프로세스 내에서 실행되는 흐름의 단위를 말한다.** 일반적으로 한 프로그램은 하나의 스레드를 가지고 있지만, 프로그램 환경에 따라 둘 이상의 스레드를 동시에 실행할 수 있다. 이러한 실행 방식을 멀티스레드(multithread)라고 한다.

※ Process : 프로그램이 메모리에 올라가서 실행되는 흐름

#### - iOS Thread

- 모든 app은 기본적으로 **main thread**를 가지고 있다.

- 기본적인 UI 및 모든 행동은 main thread에서 실행된다.
- **UIKit(UI 관련된 것)에 있는 모든 것들은 main thread에서만 돌아간다. (중요)**

#### - When is us

- 동시에 작업이 필요한 경우
- Multi core process를 사용하기 위해
- 중요한 작업에 방해를 받지 않기 위해
- 상태를 계속 감시 해야 할 경우가 필요할 때

#### - Multi thread 사용 예

- Network request / response
- time control
- image download / upload
- long time actions

<br>

#### - 동기 / 비동기 방식

- 비동기 (Asynchronous : 동시에 일어나지 않는, 같은 시기가 아닌)
- 동기 (synchronous : 동시에 일어나는, 같은 시기)
- 디자인패턴에 의한 비동기 처리는 다음과 같은 것들이 있다.<br>
: 델리게이트, 셀렉터, 블록, 노티피케이션
- 큐를 이용한 비동기처리 방법은 GCD로 가능하다.<br>
: dispatch_sync(), dispatch_astnc()


#### - 교착상태(deadlock)

- 두 개 이상의 작업이 서로 상대방의 작업이 끝나기 만은 기다리고 있기 때문에 결과적으로 아무것도 완료되지 못하는 상태를 가르킨다.

#### - [교착상태 읽어보기](http://goo.gl/jTXUXO)
 
<br>

## - NSThread

- main thread 외 다른 스레드를 만드는 클래스
- UI는 절대 추가 Thread에서 실행시키면 안된다.
- Selectior로 실행된 Method가 종료 후 자연스럽게 Thread도 종료된다.
- cancel 명령으로 강제 종료가 되지는 않는다.

<br>

## - GCD(Grand Central Dispatch)

- 비동기로 작업을 수행시키는 강력하고 쉬운 방법
- 멀티코어 프로세서에서 최적화 되어 작동 된다.
- dispatch queue를 이용해 작업들을 컨트롤 한다.
- Block으로 구현된다.

**※ 우리는 GCD에게 Block 형태를 전달해준다.<br>
※ 우리는 Queue, Block을 GCD에게 보내준다.**

#### - dispatch queue

- dispatch queues는 GCD의 핵심으로 GCD로 실행한 작업들을 관리하는 queue이다.
- 모든 dispatch queue는 first-in, first-out 데이터 구조이다.
- dispatch queue는 크게 Serial dispatch queue와 Concurrent dispatch queue 2종류로 나눌 수 있다.

#### - Serial dispatch queue vs Concurrent dispatch queue

![](https://i.stack.imgur.com/GPdXy.png)
※ Serial : 무조건 first-in first-out<br>
※ Concurrent : 무조건 first-in first-out은 아니다.

#### - Main dispatch queue

- Main Thread를 가르키며 기본 UI를 제어하는 queue이다.
- Serial 방식으로 들어온 순서대로 진행되며 앞에 작업이 종료될 때까지의 작업들은 대기 한다.
- 생성

```objc
dispatch_queue_t global_queue =
dispatch_get_main_queue();
```

#### - Global dispatch queue

- app 전역에 사용되는 queue로서 Concurrent 방식의 queue이다.
- 총 4개의 queue로 이뤄져 있으며 중요도에 따라 High, Default, Low, Background queue 중 선택되어 실행된다.

```objc
dispatch_queue_t global_queue = 
dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0); ->두 번째 인자는 사용하지 않는 예약 인자로 무조건 0을 입력

#define DISPATCH_QUEUE+PRIORITY_HIGH
#define DISPATCH_QUEUE+PRIORITY_DEFAULT
#define DISPATCH_QUEUE+PRIORITY_LOW
#define DISPATCH_QUEUE+PRIORITY_BACKGROUND
```
#### - Private dispatch queue

- 사용자 정의 queue
- 사용자가 만든 queue는 serial 방식과 Concurrent 방식으로 만들 수 있다.
- 생성

```objc
dispatch_queue_t concurrent_queue = 
dispatch_queue_create("queue.name", DISPATCH_QUEUE_CONCURRENT);

dispatch_queue_t serial_queue = 
dispatch_queue_create("queue.name", DISPATCH_QUEUE_SERIAL);
```

#### - GCD 함수

```objc
// 비동기로 작업을 추가 및 수행한다.
void dispatch_async(dispatch_queue_t queue, dispatch_block_t block);

// 동기로 작업을 추가 및 수행한다.
void dispatch_sync(dispatch_queue_t queue, dispatch_block_t block);

// 시간이 지난 후 작업을 추가한다.
void dispatch_async(dispatch_time_t when, dispatch_queue_t queue, dispatch_block_t block);

//작업을 구분
void dispatch_barrier_async(dispatch_queue_t queue, dispatch_block_t block);
```

<br>

#### - GCD 예제

#### - 1. Serial Dispatch Queue에 Sync하게 Task 추가

```objc
dispatch_queue_t queue = dispatch_queue_create("test", DISPATCH_QUEUE_SERIAL);
dispatch_sync(queue, ^{ NSLog(@"1"); });
dispatch_sync(queue, ^{ NSLog(@"2"); });
dispatch_sync(queue, ^{ NSLog(@"3"); });
Serial Queue를 생성한 후, 위와 같이 Sync 하게 Task를 추가하게 되면,
넣은 순서대로 실행이 되므로, 결과는 아래와 같습니다.

1
2
3
```

#### - 2. Serial Dispatch Queue에 Async하게 Task 추가

```objc
dispatch_queue_t queue = dispatch_queue_create("test", DISPATCH_QUEUE_SERIAL);
dispatch_async(queue, ^{ NSLog(@"1"); });
dispatch_async(queue, ^{ NSLog(@"2"); });
dispatch_async(queue, ^{ NSLog(@"3"); });
Serial Queue를 생성한 후, 위와 같이 Async 하게 Task를 추가하게 되어도, 결국은 Serial하게 1개의 Task씩 실행하며, 다른 Task의 추가를 먼저 들어간 Task의 실행까지 Blocking 하므로, 위와 같이 동일한 실행순서를 보여줍니다.

1
2
3
```

#### - 3. Async Dispatch Queue에 Sync하게 Task 추가

```objc
dispatch_queue_t queue = dispatch_queue_create("test", DISPATCH_QUEUE_CONCURRENT);
dispatch_sync(queue, ^{ NSLog(@"1"); });
dispatch_sync(queue, ^{ NSLog(@"2"); });
dispatch_sync(queue, ^{ NSLog(@"3"); });
위와 같이 Concurrent Queue를 생성한 후, Sync하게 Task를 추가하게 되면, 각 Task가 실행되기 전까지 Task추가를 하지 않으므로, 아래와 같은 결과를 보여줍니다.

1
2
3
```

#### -4. Async Dispatch Queue에 Async하게 Task 추가

```objc
dispatch_queue_t queue = dispatch_queue_create("test", DISPATCH_QUEUE_CONCURRENT);
dispatch_async(queue, ^{ NSLog(@"1"); });
dispatch_async(queue, ^{ NSLog(@"2"); });
dispatch_async(queue, ^{ NSLog(@"3"); });
Concurrent Queue에 Async하게 Task를 추가하게 되면 각 Task가 Queue에 들어가게 되며, 특정한 개수만큼 동시에 실행이 됩니다. 그래서 아래와 같은 결과(상황에 따라 계속 달라지는)를 얻게 됩니다.

1
3
2
```
