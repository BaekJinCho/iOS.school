//
//  ViewController.m
//  TableView
//
//  Created by 조백진 on 2017. 2. 14..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>
@property NSMutableArray *data;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITableView *table = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    table.delegate = self;
    table.dataSource = self;
    [self.view addSubview:table];
    
    self.data = [[NSMutableArray alloc] initWithObjects:@"김철수",@"김철수",@"김철수",@"김철수",@"김철수",@"김철수",nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.data.count;

//    switch (section) {
//        case 0:
//            return 10;
//            break;
//        case 1:
//            return 5;
//            break;
//        case 2:
//            return 3;
//            break;
//        default:
//            return 0;
//            break;
//    }
//    return 100;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    switch (section) {
        case 0:
            return @"section 1";
            break;
        case 1:
            return @"section 2";
            break;
        case 2:
            return @"section 3";
            break;
        default:
            return @"";
            break;
    }
}

//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    
//    return 100;
//}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"]; // 화면을 올림과 동시에 사라지는 뷰는 큐로 들어가서 다시 아래로 들어가서 재사용된다.
    
    if( cell == nil ){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"]; //cell이 nil일 때만실
    }
    
    cell.textLabel.text = [self.data objectAtIndex:indexPath.row];
    
    NSLog(@"test");
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
