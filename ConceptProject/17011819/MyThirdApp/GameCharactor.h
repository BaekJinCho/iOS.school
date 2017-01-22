//
//  GameCharactor.h
//  MyThirdApp
//
//  Created by 조백진 on 2017. 1. 19..
//  Copyright © 2017년 BaekJin.Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameCharactor : NSObject

//@property NSString* name;
//@property NSInteger level;
@property (readonly) NSInteger hp;
//@property NSInteger mp;
//@property NSInteger attackPower;

- (void)jumpTo:(GameCharactor *)charactor;
- (void)jump;
- (void)jump : (NSInteger)num;
- (void)attackSelf:(NSInteger)num1;

- (void)setterHp:(NSUInteger)에이치피;

- (instancetype)initWithName:(NSString *)name gender:(NSString *)gender level:(NSInteger)level;


@end
