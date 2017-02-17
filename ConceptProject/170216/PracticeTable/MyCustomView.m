//
//  MyCustomView.m
//  PracticeTable
//
//  Created by 조백진 on 2017. 2. 17..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "MyCustomView.h"

@interface MyCustomView ()

//프로필 이미지뷰
@property (nonatomic, weak) UIImageView *profileImgView;
//레이블 올라가는 프레임
@property (nonatomic, weak) UIView *profileTextContainer;
//네임 레이블
@property (nonatomic, weak) UILabel *titleLB;
@property (nonatomic, weak) UILabel *nameLB;

//자기소개 레이블
@property (nonatomic, weak) UILabel *profileLB;


@end

@implementation MyCustomView

//초기화 메소드
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createSubViews];
        [self updateLayout];
        [self test];
        
    }
    return self;
}

- (void)createSubViews{
    //*****************profile UI**************************//
    UIImageView *profileImgView = [[UIImageView alloc] init];
    
    [self addSubview:profileImgView];
    self.profileImgView = profileImgView;
    //*****************Name UI**************************//
    UIView *profileTextContainer = [[UIView alloc] init];
    [self addSubview:profileTextContainer];
    self.profileTextContainer = profileTextContainer;
    
    UILabel *titleLB = [[UILabel alloc] init];
    titleLB.text = @"Profile";
    titleLB.textColor = [UIColor lightGrayColor];
    titleLB.textAlignment = NSTextAlignmentRight;
    titleLB.font = [UIFont systemFontOfSize:9];
    [profileTextContainer addSubview:titleLB];
    self.titleLB = titleLB;
    
    UILabel *nameLB = [[UILabel alloc] init]; //객체와 생성함과 동시에 reference count가 증가해서 1이된다.
    nameLB.textColor = [UIColor blackColor];
    nameLB.textAlignment = NSTextAlignmentCenter;
    nameLB.font = [UIFont boldSystemFontOfSize:20];
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
//    self.titleLB
//    self.nameLB
    
    
    self.profileTextContainer.frame = CGRectMake(offsetX, offsetY, self.frame.size.width-offsetX - MARGIN, 100);
    offsetX = MARGIN;
    offsetY += self.profileImgView.frame.size.height;
    
    self.profileLB.frame = CGRectMake(offsetX, offsetY, self.frame.size.width - (MARGIN *2), self.frame.size.height - offsetY - MARGIN);
    
}

- (void)test{
    
    self.backgroundColor = [UIColor blackColor];
    self.profileImgView.backgroundColor = [UIColor yellowColor];
    self.profileTextContainer.backgroundColor = [UIColor blueColor];
    self.profileLB.backgroundColor = [UIColor redColor];
}

- (void)setDataWithImgName:(NSString *)imgUrlStr
                      name:(NSString *)nameStr
                       msg:(NSString *)msgStr{
    self.profileImgView.image = [UIImage imageNamed:imgUrlStr];
    self.nameLB.text = nameStr;
    self.profileLB.text = msgStr;
    
}

@end
