//
//  CustomTableViewCell.m
//  CustomUI
//
//  Created by 조백진 on 2017. 2. 19..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "CustomTableViewCell.h"

@interface CustomTableViewCell ()

@property(nonatomic, weak) UIImageView *uv;
@property(nonatomic, weak) UIView *ui;
@property(nonatomic, weak) UILabel *ul;
@property(nonatomic, weak) UILabel *ul2;
@property(nonatomic, weak) NSArray *arr;

@end

@implementation CustomTableViewCell

//- (void)awakeFromNib {
//    [super awakeFromNib];
//    // Initialization code
//} stroyboard 사용할 때 사용

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createView];
        [self locationView];
        
    }
    return self;
}

//UI의 객체 생성
- (void)createView{
    UIImageView *uiImg = [[UIImageView alloc] init];
    uiImg.clipsToBounds = YES;
    self.uv = uiImg;
    [self addSubview:uiImg];
    
    UIView *view= [[UIView alloc] init];
    self.ui = view;
    [self addSubview:view];
    
    UILabel *label = [[UILabel alloc] init];
    label.font = [UIFont systemFontOfSize:15];
    label.textColor = [UIColor blackColor];
    self.ul = label;
    [view addSubview:label];
    
    UILabel *label2 = [[UILabel alloc] init];
    label2.textColor = [UIColor blackColor];
    label2.font = [UIFont systemFontOfSize:12];
    label2.textAlignment = NSTextAlignmentRight;
    self.ul2 = label2;
    [view addSubview:label2];
}

//프레임 사이즈 및 위치 잡기
-(void)locationView{
    
    const MARGIN = 15;
    CGFloat offsetX = MARGIN;
    CGFloat offsetY = MARGIN;
    
    self.uv.frame = CGRectMake(offsetX, offsetY-5, 45, 45);
    self.uv.layer.cornerRadius = self.uv.frame.size.width / 2 ;
    offsetX += self.uv.frame.size.width;
    
    self.ui.frame = CGRectMake(offsetX, offsetY, self.frame.size.width, 30);
    offsetX = MARGIN;
    offsetY = MARGIN-12;
    self.ul.frame = CGRectMake(offsetX, offsetY, 100, 30);
    self.ul2.frame = CGRectMake(offsetX+200, offsetY, 100, 30);
    
}

-(void)setData:(NSString *)pic
           name:(NSString*)name
          text:(NSString*)text{
    self.uv.image = [UIImage imageNamed:pic];
    self.ul.text = name;
    self.ul2.text = text;
    
}
@end
