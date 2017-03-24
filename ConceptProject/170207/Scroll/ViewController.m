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
@property(nonatomic) BOOL defersCurrentPageDisplay;
@property(nonatomic) BOOL hidesForSinglePage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGSize frameSize = self.view.frame.size;
    
    //UIScrollView 구현해보기
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, frameSize.width,frameSize.height)];
    //컨텐츠 사이즈 조정
    [self.scrollView setContentSize:CGSizeMake(self.scrollView.frame.size.width*3, frameSize.height)];
    self.scrollView.delegate = self;
    self.scrollView.pagingEnabled = YES;
    [self.view addSubview:self.scrollView];
    
    
    UIImageView *image = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, frameSize.width, frameSize.height)];
    [image setImage:[UIImage imageNamed:@"11.jpeg"]];
    [self.scrollView addSubview:image];
    
    UIImageView *image1 = [[UIImageView alloc] initWithFrame:CGRectMake(image.frame.size.width, 0, image.frame.size.width, image.frame.size.height)];
    [image1 setImage:[UIImage imageNamed:@"10.jpg"]];
    [self.scrollView addSubview:image1];
    
    UIImageView *image2 = [[UIImageView alloc] initWithFrame:CGRectMake(image1.frame.size.width*2, 0, image1.frame.size.width, image.frame.size.height)];
    [image2 setImage:[UIImage imageNamed:@" background1.jpeg"]];
    [self.scrollView addSubview:image2];

    
    //UIPageControl 구현해보기(어려움)
    self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, self.scrollView.frame.size.height-30, self.scrollView.frame.size.width, 30)];
    self.pageControl.numberOfPages = 3;
    [self.view addSubview:self.pageControl];
    [self.pageControl addTarget:self action:@selector(changePage:) forControlEvents:UIControlEventValueChanged];

        
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat position = [scrollView contentOffset].x / self.view.frame.size.width;
    self.pageControl.currentPage = position;
    
}

- (void)changePage:(UIPageControl *)sender{
    
    [self.scrollView setContentOffset:CGPointMake([sender currentPage] * self.view.frame.size.width, 0) animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
