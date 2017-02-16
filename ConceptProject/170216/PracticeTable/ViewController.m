//
//  ViewController.m
//  PracticeTable
//
//  Created by 조백진 on 2017. 2. 16..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

<UITableViewDelegate, UITableViewDataSource>
@property NSMutableArray *data;
@property NSMutableArray *data2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITableView *tv = [[UITableView alloc] initWithFrame:CGRectMake(0, 30, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    tv.delegate = self;
    tv.dataSource = self;
    self.data = [[NSMutableArray alloc] initWithObjects:@"잡스",@"빌 게이츠",@"래리 페이지",@"제프 베조스",@"마크 저커버그",nil];
    self.data2 = [[NSMutableArray alloc] initWithObjects:@"팀 쿡",@"세르게이 브린",@"제프 베조스", nil];
    [self.view addSubview:tv];
}

//섹션은 만드는 메소드
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return @"천재";
            break;
        case 1:
            return @"똑똑이";
            break;
        default:
            return @" ";
            break;
    }
    
}

//열의 개수를 만들는 메소드
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return self.data.count;
    }else{
        return self.data2.count;
    }
    
}

//셀을 만들고 그 안에 내용(데이터, 이미지)을 만드는 메소드
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"kk"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"kk"];
        
    }
    
//    cell.textLabel.text = [self.data objectAtIndex:indexPath.row]; // 데이터를 셀의
//    [cell.imageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"image/%ld.jpeg",indexPath.row+1]]];
    
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text=[self.data objectAtIndex:indexPath.row];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            [cell.imageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"image/%ld.jpeg",indexPath.row+1]]];
            break;
        case 1:
            cell.textLabel.text=[self.data2 objectAtIndex:indexPath.row];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            [cell.imageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"image/%ld.jpeg",indexPath.row+6]]];
            
        default:
            break;
    }
    
    //UITableViewCell Accessory 테스트
//    switch (indexPath.row % 5) {
//        case UITableViewCellAccessoryNone:
//            cell.accessoryType = UITableViewCellAccessoryNone;
//            break;
//        case UITableViewCellAccessoryDisclosureIndicator:
//            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//            break;
//        case UITableViewCellAccessoryDetailDisclosureButton:
//            cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
//            break;
//        case UITableViewCellAccessoryCheckmark:
//            cell.accessoryType = UITableViewCellAccessoryCheckmark;
//            break;
//        case UITableViewCellAccessoryDetailButton:
//            cell.accessoryType = UITableViewCellAccessoryDetailButton;
//            break;
//        default:
//            break;
//    }
//}
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"%@",cell.textLabel.text);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
