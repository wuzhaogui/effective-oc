//
//  BlockTest.m
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/6/30.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import "BlockTest.h"

@implementation BlockTest
+ (void)test {
    //  returnType (^blockName)(params)
    void (^someBlock)(void) = ^{
        //  block implementation here
    };
    
    //  __block 使变量能在块内修改
     __block int additional = 5;
    int (^addBlock)(int a, int b) = ^(int a, int b) {
        return a + b + additional;
    };
    int add = addBlock(2, 5);
    NSLog(@"add = %d", add);
}
@end
