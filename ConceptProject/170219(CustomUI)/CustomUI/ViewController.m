//
//  ViewController.m
//  CustomUI
//
//  Created by 조백진 on 2017. 2. 19..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITableView *tv = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height)];
    tv.delegate=self;
    tv.dataSource=self;
    [self.view addSubview:tv];
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
    return 5;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    switch (indexPath.section) {
        case 0:
            [cell setData:@"jin.jpeg" name:@"조백진" text:[NSString stringWithFormat:@"%ld번째 그냥 친구",indexPath.row+1]];
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
