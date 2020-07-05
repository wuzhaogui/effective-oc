//
//  NSString+MyMethod.h
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/6/28.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (MyMethod)
- (NSString *)my_lowercaseString;
//  分类里面不要定义属性
@end

NS_ASSUME_NONNULL_END
