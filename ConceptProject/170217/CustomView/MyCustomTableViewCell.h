//
//  MyCustomTableViewCell.h
//  CustomView
//
//  Created by 조백진 on 2017. 2. 17..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomTableViewCell : UITableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;

- (void)setDataWithImgName:(NSString *)imgUrlStr
                      name:(NSString *)nameStr
                       msg:(NSString *)msgStr;

@end
