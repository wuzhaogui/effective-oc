//
//  OCSinglton.m
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/7/4.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import "OCSinglton.h"

@implementation OCSinglton

static OCSinglton *shareInstance = nil;

+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[OCSinglton alloc] init];
    });
    return shareInstance;
}
@end
