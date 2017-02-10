//
//  ViewController.m
//  Scroll
//
//  Created by 조백진 on 2017. 2. 7..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIScrollViewDelegate>

@property UIScrollView *scrollView;
@property UIPageControl *pageControl;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    CGSize frameSize = self.view.frame.size;
//    
//    //UIScrollView 구현해보기
//    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, frameSize.width,frameSize.height)];
//    //컨텐츠 사이즈 조정
//    [self.scrollView setContentSize:CGSizeMake(self.scrollView.frame.size.width*3, frameSize.height)];
//    self.scrollView.delegate = self;
//    self.scrollView.pagingEnabled = YES;
//    [self.view addSubview:self.scrollView];
//    
//    
//    UIView *image = [[UIView alloc] initWithFrame:CGRectMake(0, 0, frameSize.width, frameSize.height)];
//    image.backgroundColor = [UIColor blueColor];
//    [self.scrollView addSubview:image];
//    
//    UIView *image1 = [[UIView alloc] initWithFrame:CGRectMake(image.frame.size.width, 0, image.frame.size.width, image.frame.size.height)];
//    image1.backgroundColor=[UIColor greenColor];
//    [self.scrollView addSubview:image1];
//    
//    UIView *image2 = [[UIView alloc] initWithFrame:CGRectMake(image1.frame.size.width*2, 0, image1.frame.size.width, image.frame.size.height)];
//    image2.backgroundColor=[UIColor brownColor];
//    [self.scrollView addSubview:image2];
//
//    
//
//    //UIPageControl 구현해보기(어려움)
//    self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, self.scrollView.frame.size.height - 30, self.scrollView.frame.size.width, 30)];
//    [self.pageControl setBackgroundColor:[UIColor redColor]];
//    self.pageControl.numberOfPages = 3;
//    [self.view addSubview:self.pageControl];
//    [self.pageControl addTarget:self action:@selector(changePage:) forControlEvents:UIControlEventValueChanged];
    

    
//    NSDictionary *dic = @{@"key":@"value",@"key2":@"value2",@"key3":@"value3"};
//    for (NSString *q in dic) {
//        NSLog(@"%@",q);
//    }
    
    
    
    
    //for-in을 사용하여 중복되는 것 뺴고 결과값 출력하기
//      NSArray *arr = @[@"1",@"4",@"2",@"3",@"6",@"7",@"8"]; //NSArray를 리터럴 문법으로 사용
//    NSMutableArray *result = [[NSMutableArray alloc] init]; //NSMutableArrary를 객체화 -> NSMutableArrary은 리터럴 문법 사용 불가능!!
//
//    for (NSString *k in arr) { //for - in문
//        
//        if (![result containsObject:k]) { //not[result 안에 arr 값들이 들어있다면] = result 안에 arrary 값들이 들어있지 않다면
//            [result addObject:k]; //result에 arrary 값을 넣어라.
//            NSLog(@"%@ ", k);
//        }
//        
//    }
    
//    NSArray  *a = [NSArray arrayWithObjects:@"1", @"2", @"3", nil];//returns a pointer to NSArray
//    NSString *b = [a componentsJoinedByString:@","];//returns a pointer to NSString
//    NSLog(@"%@", b);
    
    
}


- (NSArray *)algorithm:(NSArray *)middleText{
    NSArray *arr2 = @[@"K",@"O",@"R",@"E",@"A",@"A",@"A"];
//    NSArray *arr3 = @[@"E",@"R",@"A",@"S",@"E",@"R"];
    
//    NSMutableArray *result = [[NSMutableArray alloc] init];
    if ([arr2 count] % 2 == 0) {
        NSLog(@"%@, %@", [arr2 objectAtIndex:[arr2 count] / 2 - 0.5], [arr2 objectAtIndex:[arr2 count] / 2 + 0.5]);
        
    }else
        NSLog(@"%@",[arr2 objectAtIndex:[arr2 count] / 2]);
    
    
    
    return arr2;
}


//- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    CGFloat position = [scrollView contentOffset].x / self.view.frame.size.width;
//    
//    self.pageControl.currentPage = position;
//    
//}
//
//- (void)changePage:(UIPageControl *)sender{
//    
//    [self.scrollView setContentOffset:CGPointMake([sender currentPage] * self.view.frame.size.width, 0) animated:YES];
//}
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}


@end
