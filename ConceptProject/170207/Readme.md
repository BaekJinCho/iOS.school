#2017. 02. 07
##- ScrollView
####- UIScrollView
: ViewSize보다 확장된 뷰를 보기위한 View

: UIScrollView에 추가된 View는 ContentView 위에 추가 된다.

<br>

####- UIScrollView - ContentView
![](https://spin.atomicobject.com/wp-content/uploads/uiscrollview-with-constraints-on-content.png)

**- UIScrollView 주요 항목**

	@property(nonatomic) CGPoint contentOffset;
	@property(nonatomic) CGSize contentSize;
	@property(nonatomic,weak) id<UIScrollViewDelegate> delegate;
	@property(nonatomic) BOOL bounces ; 
	//bounces past edge of content and back again
	@property(nonatomic,getter=isPagingEnabled) BOOL pagingEnabeled;
	@property(nonatomic,getter=isScrollEnabled) BOOL scrollEnabeled;
	
	@property(nonatomic) CGFloat minimumZoomScale;
	//default is 1.0
	@property(nonatomic) CGFloat maximumZoomScale;
	//default is 1.0
	must be > minimum zoom scale to enable zooming
	
	- (void)setContentOffset:(CGPoint)contentOffset animated:(BOOL)animated;
	// animate at constant velocity to
	- (void)setContentOffset:(CGPoint)setZoomScale:(CGFloat)scale animated:(BOOL)animated;
	
	

- contentOffset : 현재 scrollView가 위치해 있는 contentView의 x,y 좌표
- setContentOffset : animation이 NO이면 contentOffset이랑 같다.
- contentSize : contentView의 전체 사이즈
- bounces : bounces를 no로 하면 끝에가도 땡겨지지 않는다.
- pagingEnabled : 어느 정도 스크롤이 되면 그 화면을 보여준다. (default is NO)
- scrollEnabled : 스크롤이 돼냐 안돼냐 (default is YES)
- minimumZoomScale : 줌(축소)
- maximumZoomSclae : 줌(확대)

<br>
####- UIScrollView 구현해보기

![](https://github.com/BaekJinCho/iOS.school/blob/master/Study/Image/scroll.png?raw=true) 
