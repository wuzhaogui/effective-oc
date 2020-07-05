//
//  GCDTest.m
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/7/4.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import "GCDTest.h"

@implementation GCDTest
+ (void)test {
    NSLog(@"GCDTest start");
    
    dispatch_group_t group = dispatch_group_create();
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    for (int i = 0; i <= 10; i ++) {
        dispatch_group_async(group, queue, ^{
            int seconds = random() % 10;
            NSLog(@"seconds == %d", seconds);
        });
    }
    
    dispatch_group_notify(group, queue, ^{
        NSLog(@"finish ==========>");
    });

    
//     dispatch_queue_t queue = dispatch_queue_create("queueName", NULL);
//    for (int i = 0; i < 10; i ++) {
//        dispatch_async(queue, ^{
//            int seconds = random() % 10;
//            NSLog(@"seconds == %d", seconds);
//        });
//    }
//    dispatch_async(queue, ^{
//        NSLog(@"finish");
//    });
//    NSLog(@"============================>");
    
    while (true) {

    }
}
@end
