//
//  MyCustomTableViewCell.m
//  CustomView
//
//  Created by 조백진 on 2017. 2. 17..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "MyCustomTableViewCell.h"

@interface MyCustomTableViewCell ()

//프로필 이미지뷰
@property (nonatomic, weak) UIImageView *profileImgView;
//레이블 올라가는 프레임
@property (nonatomic, weak) UIView *profileTextContainer;
//네임 레이블
@property (nonatomic, weak) UILabel *titleLB;
@property (nonatomic, weak) UILabel *nameLB;

//자기소개 레이블
@property (nonatomic, weak) UILabel *profileLB;
//nonatomic은 다중 쓰레드가 아닐시 사용 / 기본은 atomic으로 되어 있다.
//기본은 strong으로 되어 있고 메모리에 무리가 갈 수 있기 때문에 필요한 건weak으로 쓴다.

@end



@implementation MyCustomTableViewCell


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createSubViews];
        [self updateLayout];
        [self test];
    }
    return self;
}

//- (void)awakeFromNib { storboard 이용할 때 사용하는 메소드!
//    [super awakeFromNib];
//    // Initialization code
//    //for interface builder >> storyboard
//}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//////////////////////////////////////////////

- (void)createSubViews{
    //*****************profile UI**************************//
    UIImageView *profileImgView = [[UIImageView alloc] init];
    [self addSubview:profileImgView];
    self.profileImgView = profileImgView;
    self.profileImgView.clipsToBounds = YES;
    
    //*****************Name UI**************************//
    UIView *profileTextContainer = [[UIView alloc] init];
    [self addSubview:profileTextContainer];
    self.profileTextContainer = profileTextContainer;
    
    UILabel *titleLB = [[UILabel alloc] init];
    titleLB.text = @"Profile";
    titleLB.textColor = [UIColor lightGrayColor];
    //titleLB.textAlignment = NSTextAlignmentRight;
    titleLB.font = [UIFont systemFontOfSize:25];
    [profileTextContainer addSubview:titleLB];
    self.titleLB = titleLB;
    
    UILabel *nameLB = [[UILabel alloc] init]; //객체와 생성함과 동시에 reference count가 증가해서 1이된다.
    nameLB.textColor = [UIColor blackColor];
    //nameLB.textAlignment = NSTextAlignmentCenter;
    nameLB.text = @"Cho";
    nameLB.font = [UIFont boldSystemFontOfSize:12];
    [profileTextContainer addSubview:nameLB]; // addsubview를 함과 동시에 reference count가 1이 유지된다.
    self.nameLB = nameLB;
    
    //*****************ProfileMSG UI**************************//
    UILabel *profileLB = [[UILabel alloc] init];
    profileLB.numberOfLines = 0;
    profileLB.lineBreakMode = NSLineBreakByWordWrapping;
    [self addSubview:profileLB];
    self.profileLB = profileLB;
    
}
//모든 뷰의 레이아웃에 해당하는 행동을 한다.
- (void)updateLayout{
    const CGFloat MARGIN = 15; //상수는 대문자
    //    MARGIN = 10; const로 하면 값을 바꿀 수 없다.
    
    CGFloat offsetX = MARGIN;
    CGFloat offsetY = MARGIN;
    self.profileImgView.frame = CGRectMake(offsetX, offsetY, 100, 100);
    self.profileImgView.layer.cornerRadius = self.profileImgView.frame.size.width / 2 ;
    offsetX += self.profileImgView.frame.size.width;

    self.profileTextContainer.frame = CGRectMake(offsetX, offsetY, self.frame.size.width-offsetX - MARGIN, 100);
    offsetX = MARGIN;
    self.titleLB.frame = CGRectMake(offsetX, offsetY, 100, 20);
    self.nameLB.frame = CGRectMake(offsetX, offsetY+30, 200, 20);
    offsetY += self.profileImgView.frame.size.height;
    
    
    self.profileLB.frame = CGRectMake(offsetX, offsetY, self.frame.size.width - (MARGIN *2), self.frame.size.height - offsetY - MARGIN);
    
}

-(void)layoutSubviews {
    [self updateLayout];
}

- (void)test{
    
    self.backgroundColor = [UIColor whiteColor];
    self.profileImgView.backgroundColor = [UIColor yellowColor];
    self.profileTextContainer.backgroundColor = [UIColor whiteColor];
    self.profileLB.backgroundColor = [UIColor lightGrayColor];
}

- (void)setDataWithImgName:(NSString *)imgUrlStr
                      name:(NSString *)nameStr
                       msg:(NSString *)msgStr{
    self.profileImgView.image = [UIImage imageNamed:imgUrlStr];
    self.nameLB.text = nameStr;
    self.profileLB.text = msgStr;
    
}

@end
