//
//  ViewController.m
//  Alert
//
//  Created by 조백진 on 2017. 3. 2..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIGestureRecognizerDelegate>
@property NSInteger countTab;
//터치 횟수와 좌표를 나타내주는 레이블
@property UILabel * lb;
@property UILabel * lb2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //alert를 테스트하기 위한 버튼
    UIButton *alert = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
    [alert setTitle:@"alert" forState:UIControlStateNormal];
    [alert setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [alert addTarget:self action:@selector(alertBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:alert];
    
    ////alertActionSheet를 테스트하기 위한 버튼
    UIButton *alertActionSheet = [[UIButton alloc] initWithFrame:CGRectMake(200, 50, 200, 50)];
    [alertActionSheet setTitle:@"alertActionSheet" forState:UIControlStateNormal];
    [alertActionSheet setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [alertActionSheet addTarget:self action:@selector(alertActionSheetBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:alertActionSheet];
    
    //label 세팅
    self.lb = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 300, 100)];
    self.lb.text = @"터치 좌표";
    [self.view addSubview:self.lb];
    self.lb2 = [[UILabel alloc] initWithFrame:CGRectMake(100, 180, 100, 50)];
    self.lb2.text = @"터치 횟수";
    [self.view addSubview:self.lb2];
    
    //gesture 객체 생성
    UITapGestureRecognizer *testGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    testGesture.delegate = self;
    [testGesture locationInView:[self view]];
    //뷰에 gesture 추가
    [self.view addGestureRecognizer:testGesture];

}
//gesture 메소드
- (void)handleTap:(UITapGestureRecognizer *)gesture{
    //화면을 터치할 때, x,y 좌표값을 가져오는 것
    self.lb.text = [NSString stringWithFormat:@"x : %f y : %f", [gesture locationInView:[self view]].x,[gesture locationInView:[self view]].y];
    NSLog(@"x:%f y:%f", [gesture locationInView:[self view]].x,[gesture locationInView:[self view]].y);
    
}
//gesture 메소드
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
    self.lb2.text = [NSString stringWithFormat:@"터치 횟수 : %ld", touch.tapCount];
    NSLog(@"터치 횟수 : %ld", touch.tapCount);
    return YES;
}
//alert 버튼 메소드
- (void)alertBtn:(UIButton *)sender{
    //alertcontroller 객체 생성
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"제목" message:@"메시지" preferredStyle:UIAlertControllerStyleAlert];
    //alert okaction
    UIAlertAction *okaciton = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    }];
    //alert cancel
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:nil];
    //alertController 액션 추가
    [alertController addAction:okaciton];
    [alertController addAction:cancel];
    [self presentViewController:alertController animated:YES completion:nil];
    NSLog(@"alert button");
}
//alertActionSheet 버튼 메소드
- (void)alertActionSheetBtn:(UIButton *)sender{
    //alertcontroller 객체 생성
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"제목" message:@"메시지" preferredStyle:UIAlertControllerStyleActionSheet];
    //alert action
    UIAlertAction *okaciton = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:okaciton];
    [alertController addAction:cancel];
    [self presentViewController:alertController animated:YES completion:nil];
    NSLog(@"alertActionSheet button");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
