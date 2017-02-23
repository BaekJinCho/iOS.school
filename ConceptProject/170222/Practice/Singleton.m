//
//  Singleton.m
//  Practice
//
//  Created by 조백진 on 2017. 2. 23..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

+ (instancetype)sharedInstance{
    static Singleton *data;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        data = [[Singleton alloc]init];
    });
    return data;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSMutableArray *temp = (NSMutableArray*)[[NSUserDefaults standardUserDefaults] objectForKey:@"list"];
        
        if(temp != nil) {
            self.information = [[NSMutableArray alloc] init];
            
            for (NSString *test in temp) {
                [self.information addObject:test];
            }
            
        } else {
            self.information = [[NSMutableArray alloc] initWithObjects:@"에릭", @"나혜미", @"디스패치", nil];
        }
    }
    return self;
}

@end
