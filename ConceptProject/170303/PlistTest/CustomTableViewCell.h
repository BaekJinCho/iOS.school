//
//  CustomTableViewCell.h
//  PlistTest
//
//  Created by 조백진 on 2017. 3. 3..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *profileImage;
@property (weak, nonatomic) IBOutlet UILabel *topLabel;
@property (weak, nonatomic) IBOutlet UILabel *bottomLabel;


@end
