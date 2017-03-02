//
//  SecondViewController.m
//  Alert
//
//  Created by 조백진 on 2017. 3. 2..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
<UIImagePickerControllerDelegate, UINavigationControllerDelegate>
//이미지 피커 버튼
@property UIButton *btn;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
//    UITapGestureRecognizer *tabGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTab:)];
//    [self.view addGestureRecognizer:tabGesture];
    
    //버튼 생성
    self.btn = [[UIButton alloc] initWithFrame:CGRectMake(200, 200, 150, 50)];
    [self.btn setTitle:@"Image Picker" forState:UIControlStateNormal];
    [self.btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.btn addTarget:self action:@selector(imageBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.btn];
}
//이미지 피커 
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info;{
    [self dismissViewControllerAnimated:YES completion:nil];
}

//이미지 피커에 아무런 행동도 하지 않았을 때
-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
//버튼 메소드
- (void)imageBtnClick:(UIButton *)sender{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"액션시트 UP" message:@"액션시트가 up 되었습니다." preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *okaciton = [UIAlertAction actionWithTitle:@"앨범" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //이미지 피커 객체 생성 및 actionSheet에 나오는 항목
        UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
        imagePicker.delegate = self;
        [imagePicker setSourceType:UIImagePickerControllerSourceTypeSavedPhotosAlbum];
        [self presentViewController:imagePicker animated:YES completion:nil];
        
    }];
    //카메라를 불러오는 alert 및 이미지 피커
    UIAlertAction *cameraaciton = [UIAlertAction actionWithTitle:@"사진" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
        imagePicker.delegate = self;
        [imagePicker setSourceType:UIImagePickerControllerSourceTypeCamera];
        [self presentViewController:imagePicker animated:YES completion:nil];
    }];
    
    UIAlertAction *cancelaciton = [UIAlertAction actionWithTitle:@"취소" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:cameraaciton];
    [alert addAction:okaciton];
    [alert addAction:cancelaciton];
    [self presentViewController:alert animated:YES completion:nil];
}
////화면을 터치했을 때의 메소드
//- (void)viewTab:(UITapGestureRecognizer *)sender{
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"액션시트 UP" message:@"액션시트가 up 되었습니다." preferredStyle:UIAlertControllerStyleActionSheet];
//    [self presentViewController:alert animated:YES completion:nil];
//    UIAlertAction *okaciton = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
//    }];
//        [alert addAction:okaciton];
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
