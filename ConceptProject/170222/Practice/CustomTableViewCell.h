//
//  CustomTableViewCell.h
//  Practice
//
//  Created by 조백진 on 2017. 2. 22..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;

- (void)setData:(NSString *)pic
          name:(NSString*)name
          text:(NSString*)text;
@end
