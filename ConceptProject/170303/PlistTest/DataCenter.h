//
//  DataCenter.h
//  PlistTest
//
//  Created by 조백진 on 2017. 3. 3..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

@property (nonatomic) NSMutableArray *plistData;

+ (instancetype)sharedInstance;

- (void)loadFile;
- (void)saveFile;
    
@end
