//
//  NSString+EOCMyAddition.m
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/6/27.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import "NSString+EOCMyAddition.h"

@implementation NSString (EOCMyAddition)
- (NSString *)eoc_myLowercaseString {
    NSString *lowercase = [self eoc_myLowercaseString];
    NSLog(@"%@ => %@", self, lowercase);
    return lowercase;
}
@end
