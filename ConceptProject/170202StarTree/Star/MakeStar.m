//
//  MakeStar.m
//  Star
//
//  Created by 조백진 on 2017. 2. 2..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import "MakeStar.h"

@implementation MakeStar

+ (void)makeStar:(NSUInteger)number{
    for (NSUInteger s=1; s<=number; s++) {
        for (NSUInteger ss=1; ss<=s; ss++) {
            printf("*");
        }
        printf("\n");
    }
}



@end
