//
//  MyCustomView.h
//  PracticeTable
//
//  Created by 조백진 on 2017. 2. 17..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomView : UIView

- (void)setDataWithImgName:(NSString *)imgUrlStr
                      name:(NSString *)nameStr
                       msg:(NSString *)msgStr;

- (instancetype)initWithFrame:(CGRect)frame;

@end
