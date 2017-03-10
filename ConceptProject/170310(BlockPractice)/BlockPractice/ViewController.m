//
//  ViewController.m
//  BlockPractice
//
//  Created by 조백진 on 2017. 3. 10..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@interface ViewController ()

@property void(^sampleCode)(void);
@property void(^sampleCode2)(NSInteger num1, NSInteger num2);


@property (nonatomic, weak) IBOutlet CustomView* myView;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //typedef를 사용하지 않았을 때, 호출
    [self.myView changed:^NSString *{
        return @"이것도 성공";
    }];
    
    
//    //typedef를 사용했을 때, 호출
//    [self.myView change:^NSString *{
//        return @"성공";
//    }];
    
    
//    self.sampleCode =  ^{
//        NSLog(@"block 예제입니다.");
//        
//    };
//    
//    self.sampleCode2 = ^(NSInteger num1, NSInteger num2){
//        NSLog(@"%ld", num1);
//        NSLog(@"%ld", num2);
//    };
//    
//    [self test:self.sampleCode2];
    
//    self.sampleCode2(2,3);
    
//    self.sampleCode();
    
}

-(void)test:(void(^) (NSInteger num1, NSInteger num2))blockParam {
    
    NSLog(@"Start");
    
    blockParam(10, 20);
    
    NSLog(@"End");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
