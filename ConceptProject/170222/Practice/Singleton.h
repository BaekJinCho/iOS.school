//
//  Singleton.h
//  Practice
//
//  Created by 조백진 on 2017. 2. 23..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

+ (instancetype)sharedInstance;
@property NSMutableArray *information;

@end
