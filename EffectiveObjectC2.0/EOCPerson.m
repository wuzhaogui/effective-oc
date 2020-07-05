//
//  EOCPerson.m
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/6/26.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import "EOCPerson.h"

const NSTimeInterval kAnimationDuration = 0.3;

//  类延续分类
@interface EOCPerson()
//  这里可以隐藏东东
//  把私有方法定义在这里
- (void)p_privateMethod;
@end

@implementation EOCPerson {
   NSMutableSet<EOCPerson *> *_internalFriends;
}
//  @synthesize 指定实例变量的名称
//  @synthesize firstName = _firstName;

//  @dynamic不要自动合成存取方法
//  @dynamic firstName;

- (instancetype)initWithFirstName:(NSString *)firstName
                         lastName:(NSString *)lastName {
    if (self = [super init]) {
        //  copy保证完整的内存语义
        _firstName = firstName.copy;
        _lastName = lastName.copy;
        _internalFriends = [NSMutableSet set];
    }
    return self;
}

- (NSSet *)friends {
    return [_internalFriends copy];
}

- (void)addFriend:(EOCPerson *)person {
    [_internalFriends addObject:person];
}

- (void)removeFriend:(EOCPerson *)person {
    [_internalFriends removeObject:person];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"EOCPerson(%p, firstName:%@, lastName:%@)", self, _firstName, _lastName];
}

- (instancetype)copyWithZone:(NSZone *)zone {
    EOCPerson *copy = [[[self class] allocWithZone:zone] initWithFirstName:_firstName lastName:_lastName];
//    copy->_internalFriends = [_internalFriends mutableCopy];浅拷贝
//    copy->_internalFriends = [[NSMutableSet alloc] initWithSet:_internalFriends copyItems:NO];//浅拷贝
//    copy->_internalFriends = [[NSMutableSet alloc] initWithSet:_internalFriends copyItems:NO];//深拷贝
    return copy;
}

- (void)p_privateMethod {
    
}

@end
