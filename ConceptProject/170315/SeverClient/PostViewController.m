//
//  PostViewController.m
//  SeverClient
//
//  Created by 조백진 on 2017. 3. 17..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import "PostViewController.h"
#import "DataCenter.h"
#import "NetworkCenter.h"
#import "ThirdViewController.h"


@interface PostViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UITextField *content;
@property (weak, nonatomic) IBOutlet UITextField *imgCover;
@property (weak, nonatomic) IBOutlet UIButton *postBtn;
@property (weak, nonatomic) IBOutlet UIButton *backBtn;

@end

@implementation PostViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//post btn
- (IBAction)sendForm:(UIButton *)sender {
    //이미지 지정
    UIImage *image = [UIImage imageNamed:@"background2.jpeg"];
    //지정한 이미지 NSData로 넣어주기
    NSData *imageData = UIImageJPEGRepresentation(image, 0.5);
    [[DataCenter shardData].apiData multiPartForm:@"들어가라"content:@"들어왔따" formData:imageData completion:^(BOOL isSucessed, id respond) {
        if (isSucessed) {
            NSLog(@"Multipart 성공!");
        } else {
            NSLog(@"Multipart 실패!");
        }
    }];
    
}
//back btn click method
- (IBAction)back:(UIButton *)sender {
    
    ThirdViewController *signUpPage = [[ThirdViewController alloc] init];
    [self dismissViewControllerAnimated:signUpPage completion:nil];
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
