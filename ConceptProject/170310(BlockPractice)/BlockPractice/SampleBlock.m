//
//  SampleBlock.m
//  BlockPractice
//
//  Created by 조백진 on 2017. 3. 10..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import "SampleBlock.h"

@interface SampleBlock ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

@implementation SampleBlock

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    self.pracBlock =^{
//    return @"dd";
//        //self.label.text = @"뭐야";
//        
//    };
    
}

- (IBAction)sender:(UIButton *)sender {
//    self.pracBlock();
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
