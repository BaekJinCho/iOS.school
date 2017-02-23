//
//  SecondViewController.m
//  Practice
//
//  Created by 조백진 on 2017. 2. 21..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "Singleton.h"

@interface SecondViewController ()
<UITableViewDelegate, UITableViewDataSource>
@property NSArray *data;
@property NSArray *data2;
@property NSArray *data3;
@property NSArray *data4;
//Switch 만들기
@property UISwitch *switching1;
@property UISwitch *switching2;
@property UISwitch *switching3;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //네이게이션바 타이틀 및 색상 설정
    self.navigationItem.title = @"친 구"; //self로 네이게이션 아이템과 컨트롤러를 부른 이유
    [self.navigationController.navigationBar setBarTintColor:[UIColor brownColor]];
    
    //뒤로가기 버튼 이미지 네비게이션바에 올리기
    UIButton *backBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 30, 25)];
    [backBtn setImage:[UIImage imageNamed:@"left"] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(backButton:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *bar = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    self.navigationItem.leftBarButtonItem = bar;
    //테이블 뷰 객체 생성
    UITableView *table = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    table.delegate = self;
    table.dataSource = self;
    [self.view addSubview:table];
    //데이터 만들기
    self.data = @[@"자동 친구 추가", @"친구 목록 새로고침"];
    self.data2 = @[@"친구 추천 허용"];
    self.data3 = @[@"친구 이름 동기화"];
    self.data4 = @[@"숨김친구 관리", @"차단친구 관리"];
}
#pragma -mark SecondPage Back Button
- (void)backButton:(UIButton *)sender{
    [self.navigationController popViewControllerAnimated:YES];
    NSLog(@"leftBarButoon을 클락하였습니다.");
}

//각 세션에 갯수 만들어주기
#pragma -mark NumberOfRowsInSection
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return self.data.count;
            break;
        case 1:
            return self.data2.count;
            break;
        case 2:
            return self.data3.count;
            break;
        default:
            return self.data4.count;
            break;
    }
    
}
//셀 만들어주기
#pragma -mark cellForRowAtIndexPath
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    //각 세션에 맞는 정보 넣어주기
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text = [self.data objectAtIndex:indexPath.row];
            self.switching1 = [[UISwitch alloc] init]; //스위치를 넣어주기 전에 객체 생성
            [self.switching1 addTarget:self action:@selector(selectedCustom:) forControlEvents:UIControlEventValueChanged];
            cell.accessoryView = self.switching1; //셀의 악세사리뷰에 스위치 넣어주기
            break;
        case 1:
            cell.textLabel.text = [self.data2 objectAtIndex:indexPath.row];
            self.switching2 = [[UISwitch alloc] init];
            cell.accessoryView = self.switching2;
            
            [self.switching2 addTarget:self action:@selector(testSave) forControlEvents:UIControlEventValueChanged];
            
            break;
        case 2:
            cell.textLabel.text = [self.data3 objectAtIndex:indexPath.row];
            self.switching3 = [[UISwitch alloc] init];
            cell.accessoryView = self.switching3;
            
            break;
        default:
            cell.textLabel.text = [self.data4 objectAtIndex:indexPath.row];
            break;
    }
    return cell;
}
//세션 아래쪽 부분에 해당되는 정보 넣어주는 메소드
#pragma -mark titleForFooterInSection
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return @"내 연락처에서 카카오톡을 사용하는 친구를 자동으로 친구목록\n에 추가합니다. 수동으로 추가하려면 새로고침 버튼을 눌러주세요.";
            break;
        case 1:
            return @"알 수도 있는 친구를 추천받고, 나를 다른 친구에게 추천해줍니다.";
            break;
        case 2:
            return @"카카오톡 앱의 친구 이름을 PC버전, 카카오 게임 등에서도 동일\n하게 보여줍니다.";
            break;
        default:
            return @" ";
            break;
    }
}
//세션의 높이를 설정해주는 메소드
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 40;
}
//전체 세션의 갯수를 나타내는 메소드
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}
//각 세션의 제목
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    switch (section) {
        case 0:
            break;
        case 1:
            break;
        case 2:
            break;
        default:
            return @"친구 관리";
            break;
    }
    return @" ";
}
//switch를 클릭했을 때 thirdView로 이동하는 메소드
#pragma -mark selectedSwith
- (void)selectedCustom:(UISwitch *)sender{
    ThirdViewController *thirdView = [[ThirdViewController alloc] init];
    [self.navigationController pushViewController:thirdView animated:YES];
    NSLog(@"첫번째 스위치가 눌렸습니다.");
    
    
}

- (void)testSave {
    //친구 추천 허용
    [[NSUserDefaults standardUserDefaults] setObject:[[NSMutableArray alloc] initWithObjects:@"에릭", @"나혜미", @"디스패치", nil] forKey:@"list"];
    
    NSMutableArray *test = [[NSUserDefaults standardUserDefaults] objectForKey:@"list"];
    
    [[Singleton sharedInstance].information removeAllObjects];
    for (NSString *tt in test) {
        [[Singleton sharedInstance].information addObject:tt];
    }
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
