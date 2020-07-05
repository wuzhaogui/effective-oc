//
//  BlockTest.h
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/6/30.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef int(^EOCAddBlcok)(NSInteger, NSInteger);

NS_ASSUME_NONNULL_BEGIN

@interface BlockTest : NSObject
+ (void)test;
@end

NS_ASSUME_NONNULL_END
