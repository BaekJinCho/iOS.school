//
//  ViewController.m
//  SeverClient
//
//  Created by 조백진 on 2017. 3. 15..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *image1;
@property (weak, nonatomic) IBOutlet UIImageView *image2;
@property (weak, nonatomic) IBOutlet UIImageView *image3;
@property (weak, nonatomic) IBOutlet UIImageView *image4;
@property (weak, nonatomic) IBOutlet UIImageView *image5;
@property (weak, nonatomic) IBOutlet UIImageView *image6;
@property (weak, nonatomic) IBOutlet UIImageView *image7;
@property (weak, nonatomic) IBOutlet UIImageView *image8;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
//    self.image1.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://cfile4.uf.tistory.com/image/26341033578B83D31B6523"]]];
//    self.image2.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://cfile4.uf.tistory.com/image/26341033578B83D31B6523"]]];
//    self.image3.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://cfile4.uf.tistory.com/image/26341033578B83D31B6523"]]];
//    self.image4.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://cfile4.uf.tistory.com/image/26341033578B83D31B6523"]]];
//    self.image5.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://cfile4.uf.tistory.com/image/26341033578B83D31B6523"]]];
//    self.image6.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://cfile4.uf.tistory.com/image/26341033578B83D31B6523"]]];
//    self.image7.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://cfile4.uf.tistory.com/image/26341033578B83D31B6523"]]];
//    self.image8.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://cfile4.uf.tistory.com/image/26341033578B83D31B6523"]]];
    
    NSURL *url = [NSURL URLWithString:@"http://cfile4.uf.tistory.com/image/26341033578B83D31B6523"];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSURLSessionTask *task = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data,
                                                                              NSURLResponse * _Nullable response,
                                                                              NSError * _Nullable error) {
        if (data) {
            UIImage *image = [UIImage imageWithData:data];
            
            if (image) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    self.image1.image = image;
                });
            }
           
        }
    }];
    [task resume];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
