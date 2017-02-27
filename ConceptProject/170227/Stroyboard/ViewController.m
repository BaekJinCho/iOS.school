//
//  ViewController.m
//  Stroyboard
//
//  Created by 조백진 on 2017. 2. 27..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UITextField *Field;
//@property (weak, nonatomic) IBOutlet UISwitch *switching;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.testView.backgroundColor = [UIColor blueColor];
    [self.Field setText:@"텍스트 텍스트"];
}
- (IBAction)switching:(UISwitch *)sender {
}


- (IBAction)btn:(UIButton *)sender {
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    self.testView.backgroundColor = [UIColor blueColor];
}

- (IBAction)btnAction:(UIButton *)sender{
    self.label1.text = @"버튼이 클릭되었습니다.";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
