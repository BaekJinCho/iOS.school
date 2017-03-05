//
//  ViewController.m
//  PlistTest
//
//  Created by 조백진 on 2017. 3. 3..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter.h"

#import "CustomTableViewCell.h"

@interface ViewController ()

<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Sample" ofType:@"plist"];
//    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:filePath];
//    NSArray *list = [NSArray arrayWithContentsOfFile:filePath];
//    
//    UIImage *img = [UIImage imageNamed:@"jin.jpeg"];
//    UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.view.frame];
//    [imageView setImage:img];
//    [self.view addSubview:imageView];
//    NSLog(@"list = %@ ",list);
}

-(void)viewWillAppear:(BOOL)animated {
    
    [[DataCenter sharedInstance] loadFile];
    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[DataCenter sharedInstance].plistData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    NSDictionary *temp = [[DataCenter sharedInstance].plistData objectAtIndex:indexPath.row];
    //cell의 top 부분에는 이름, bottom 부분에는 전화번호를 넣는 것
    cell.topLabel.text = [temp objectForKey:@"FriendName"];
    cell.bottomLabel.text = [temp objectForKey:@"FriendPhoneNumber"];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
