//
//  CarVendingMachineViewController.m
//  Stroyboard
//
//  Created by 조백진 on 2017. 2. 27..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "CarVendingMachineViewController.h"

@interface CarVendingMachineViewController ()
@property (weak, nonatomic) IBOutlet UILabel *money;
@property (nonatomic) NSInteger ballCount;
@end

@implementation CarVendingMachineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//각각의 버튼
- (IBAction)one:(UIButton *)sender {
    
    self.ballCount += 1;
    
    [self.money setText:[NSString stringWithFormat:@"포켓볼 : %ld", self.ballCount]];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
