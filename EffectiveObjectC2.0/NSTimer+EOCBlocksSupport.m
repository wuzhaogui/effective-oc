//
//  NSTimer+EOCBlocksSupport.m
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/7/5.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import "NSTimer+EOCBlocksSupport.h"

@implementation NSTimer (EOCBlocksSupport)
+ (NSTimer *)eoc_scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                             block:(void (^)(void))block
                                           repeats:(BOOL)repeats {
    return [self scheduledTimerWithTimeInterval:interval target:self selector:@selector(eoc_blockInvoke:) userInfo:[block copy] repeats:repeats];
}
    
    + (void)eoc_blockInvoke:(NSTimer *)timer {
        void (^block)(void) = timer.userInfo;
        if (block) {
            block();
        }
}

@end
