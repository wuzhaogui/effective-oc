//
//  NSTimer+EOCBlocksSupport.h
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/7/5.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSTimer (EOCBlocksSupport)
    
+ (NSTimer *)eoc_scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                          block:(void (^)(void))block
                                        repeats:(BOOL)repeats;
@end

NS_ASSUME_NONNULL_END
