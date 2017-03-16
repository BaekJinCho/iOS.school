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
@property (nonatomic) IBOutlet UILabel *numberLabel;
@property (nonatomic) NSInteger i;

@property NSThread *thread;
@property dispatch_queue_t queue;
@property dispatch_source_t mainTimer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*********************dispatch 만들어보기******************************/
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
    
    /*********************버튼 click하면 label이 바뀌는 것 -> NSThread 만들기******************************/
//    self.thread = [[NSThread alloc] initWithTarget:self selector:@selector(startThread) object:nil];
//    [self.thread start];
//    [self.changeBtn setTitle:@"시작" forState:UIControlStateNormal];
    [self startThread];
}

- (IBAction)changeBtn:(UIButton *)sender {
    
//    [self.thread cancel]; NSThread 정지

    dispatch_suspend(self.mainTimer); //dispatch 정지
}


- (void)startThread{
    /*********************스탑워치 만들기!******************************/
    if (!self.mainTimer) {
        self.mainTimer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_main_queue());
        
        dispatch_source_set_timer(self.mainTimer, DISPATCH_TIME_NOW, NSEC_PER_SEC * 1,NSEC_PER_SEC * 1);
        dispatch_source_set_event_handler(self.mainTimer, ^{
            [self.numberLabel setText:[NSString stringWithFormat:@"%ld", self.i]];
            NSLog(@"%ld", self.i);
            self.i += 1;
        });
    }
    
    dispatch_resume(self.mainTimer); //dispatch 정지
    /*********************버튼 click하면 label이 바뀌는 것 -> dispatch 만들기******************************/
//    self.queue = dispatch_queue_create("queue name", DISPATCH_QUEUE_CONCURRENT);
//    dispatch_async(self.queue, ^{
//        for (self.i = 0; self.i<100; self.i++) {
//            dispatch_sync(dispatch_get_main_queue(), ^{
//                [self.numberLabel setText:[NSString stringWithFormat:@"%ld", self.i]];
//            });
            
//        }
//    });
    
    
    
    /*********************버튼 click하면 label이 바뀌는 것 -> NSThread 만들기******************************/
//    NSInteger i = 0;
//    while (!self.thread.isCancelled) {
//        sleep(1);
//        [self performSelectorOnMainThread:@selector(changeText:) withObject:[NSString stringWithFormat:@"%ld",i] waitUntilDone:YES];
//        i += 1;
//    }
    
//    for (NSInteger i=0; i<50; i++) {
//        sleep(1);
//    }
    
}

- (void)changeText:(NSString *) str{
    
    [self.numberLabel setText:str];
}

@end
