//
//  ViewController.m
//  MyFirstApp
//
//  Created by 조백진 on 2017. 1. 16..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.


    NSLog(@"브레이크 포인트 전");
    
    NSLog(@"브레이크 포인트 후");
    
    NSLog(@"중간 공백........");
    
    NSLog(@"다음 브레이크 포인트 전");
    
    NSLog(@"다음 브레이크 포인트 후");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
 버튼 액션 : touch up inside
 타이틀 레이블의 텍스트를 변경한다.
 */

- (IBAction)btnAction
{
    
    [self.titleLB setText:@"걱정따윈 없어!\n내 친구와 함께니까"];
}

//switch on/off로 글자 바뀌는 것
- (IBAction)swiAction:(UISwitch *)switcher
{

    if (switcher.isOn == YES){
        [self.titleLB setText:@"처음 시작은 어색할지도 몰라~\n용기를 내!"];
    }else{
        [self.titleLB setText:@"삐까삐까\n!"];
    }
    
    
}







@end
