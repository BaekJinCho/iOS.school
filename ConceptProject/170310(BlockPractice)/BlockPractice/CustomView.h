//
//  CustomView.h
//  BlockPractice
//
//  Created by 조백진 on 2017. 3. 10..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NSString*(^pracBlock)(void);
@interface CustomView : UIView


@property NSString*(^pracBlock)(void);
@property (nonatomic, weak) IBOutlet UILabel *tempLabel;
@property (nonatomic, weak) IBOutlet UIButton *tempButton;

- (void)changed:(NSString*(^)(void))pracBlock;

////typedef를 사용했을 때, block 메소드
//- (void)change:(pracBlock)test;

@end
