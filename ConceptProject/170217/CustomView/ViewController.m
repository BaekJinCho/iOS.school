//
//  ViewController.m
//  CustomView
//
//  Created by 조백진 on 2017. 2. 17..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ViewController.h"
#import "MyCustomTableViewCell.h"

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /*
    MyCustomView *customView = [[MyCustomView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 250)];
    [customView setDataWithImgName:@"jin.jpeg" name:@"cho" msg:@"우왕 커스텀 뷰다~~"];
    [self.view addSubview:customView];
    */
    
    UITableView *tv = [[UITableView alloc] initWithFrame:CGRectMake(0,0, self.view.frame.size.width, self.view.frame.size.height)];
    tv.delegate = self;
    tv.dataSource = self;
    [self.view addSubview:tv];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    MyCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[MyCustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    [cell setDataWithImgName:@"jin.jpeg" name:@"cho" msg:[NSString stringWithFormat:@"%ld", indexPath.row]];
    
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 200;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
