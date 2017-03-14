//
//  ViewController.m
//  Thread
//
//  Created by 조백진 on 2017. 3. 13..
//  Copyright © 2017년 baekjin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *changeBtn;
@property (weak, nonatomic) IBOutlet UIButton *changeBtn2;

@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@property NSThread *thread;
@property dispatch_queue_t queue;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"2");
    });
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"1");
    });
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"3");
    });
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"5");
    });
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"6");
    });
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"0");
    });
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"8");
    });

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)changeNumber:(UIButton *)sender {
    self.thread = [[NSThread alloc] initWithTarget:self selector:@selector(startThread) object:nil];
    [self.thread start];
//    self.queue = dispatch_queue_create("queue", DISPATCH_QUEUE_CONCURRENT);
    
    [self.changeBtn setTitle:@"시작" forState:UIControlStateNormal];
}

- (IBAction)changeBtn:(UIButton *)sender {
    
    [self.thread cancel];
}


- (void)startThread{
    
    NSInteger i = 0;
    
    while (!self.thread.isCancelled) {
        
        sleep(1);
        [self performSelectorOnMainThread:@selector(changeText:) withObject:[NSString stringWithFormat:@"%ld",i] waitUntilDone:YES];
        i += 1;
    }
    
//    for (NSInteger i=0; i<50; i++) {
//        sleep(1);
//    }
    
}

- (void)changeText:(NSString *) str{
    
    [self.numberLabel setText:str];
}

@end
