//
//  CustomView.m
//  BlockPractice
//
//  Created by 조백진 on 2017. 3. 10..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import "CustomView.h"

@interface CustomView ()

//@property (nonatomic) pracBlock block;

//@property (nonatomic) NSString*(^pracBlock)(void);

@end

@implementation CustomView

//typedef를 사용하지 않았을 때 구현(typedef와 차이 : pracBlock -> (NSString*(^)(void))pracBlock로 바뀌는 것)
- (void)changed:(NSString*(^)(void))pracBlock
{
    //self.pracBlock =  pracBlock();
    self.pracBlock = pracBlock;
}

- (IBAction)changeText:(UIButton *)sender {

    self.tempLabel.text = self.pracBlock();

}

////typedef를 사용했을 때, block 메소드
//- (void)change:(pracBlock)test{
//    self.block = test;
//}
//- (IBAction)changeText:(UIButton *)sender {
//    
//    self.tempLabel.text = self.block();
//    
//}


@end
