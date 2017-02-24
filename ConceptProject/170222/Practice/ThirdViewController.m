//
//  ThirdViewController.m
//  Practice
//
//  Created by 조백진 on 2017. 2. 22..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ThirdViewController.h"
#import "CustomTableViewCell.h"
#import "Singleton.h"

@interface ThirdViewController ()
<UITableViewDelegate, UITableViewDataSource>

@property UITableView *tv;
//싱글턴 프로퍼티 만들기
@property (nonatomic) Singleton *single;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tv = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height)];
    self.tv.delegate=self;
    self.tv.dataSource=self;
    [self.view addSubview:self.tv];
    
    self.single = [Singleton sharedInstance];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return @"친구";
            break;
        case 1:
            return @"친한 친구";
            break;
        default:
            return @" ";
            break;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    NSMutableArray *center = self.single.information;
    
    switch (indexPath.section) {
        case 0:
            //[cell setData:@"jin.jpeg" name:@"조백진" text:[NSString stringWithFormat:@"%ld번째 그냥 친구",[center object]]];
            //싱글턴 구현
            [cell setData:@"jin.jpeg" name:[center objectAtIndex:indexPath.row] text:@"안친함"];
            break;
        case 1:
            [cell setData:@"1.jpeg" name:@"Steven Paul Jobs" text:[NSString stringWithFormat:@"%ld번째 친한 친구",indexPath.row+6]];
            break;
        default:
            break;
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 65;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //싱글턴 구현
    [self.single.information replaceObjectAtIndex:indexPath.row withObject:@"ㅇㅁㄴㅇ"];
    
    [self.tv reloadData];
    
    //정보(데이터)를 저장 
    [[NSUserDefaults standardUserDefaults] setObject:self.single.information forKey:@"list"];
}

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
