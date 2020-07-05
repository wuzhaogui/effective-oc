//
//  NSString+MyMethod.m
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/6/28.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import "NSString+MyMethod.h"

@implementation NSString (MyMethod)
- (NSString *)my_lowercaseString {
    return [self uppercaseString];
}
@end
