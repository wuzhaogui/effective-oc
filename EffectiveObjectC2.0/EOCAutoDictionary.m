//
//  EOCAutoDictionary.m
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/6/27.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import "EOCAutoDictionary.h"
#import <objc/runtime.h>

id autoDictionaryGetter(id self, SEL _cmd);
void autoDictionarySetter(id self, SEL _cmd, id value);

@interface EOCAutoDictionary()

@property (nonatomic, strong) NSMutableDictionary *backingStore;

@end

@implementation EOCAutoDictionary

@dynamic string, number, date, opaqueObject;

id autoDictionaryGetter(id self, SEL _cmd) {
    EOCAutoDictionary *typeSelf = (EOCAutoDictionary *)self;
    NSMutableDictionary *backingStore = typeSelf.backingStore;
    NSString *key = NSStringFromSelector(_cmd);
    return [backingStore objectForKey:key];
}

void autoDictionarySetter(id self, SEL _cmd, id value) {
    EOCAutoDictionary *typeSelf = (EOCAutoDictionary *)self;
    NSMutableDictionary *backingStore = typeSelf.backingStore;
    NSMutableString *key = [NSStringFromSelector(_cmd) mutableCopy];
    [key deleteCharactersInRange:NSMakeRange(key.length - 1, 1)];
    [key deleteCharactersInRange:NSMakeRange(0, 3)];
    NSString *lower = [key substringWithRange:NSMakeRange(0, 1)].lowercaseString;
    [key replaceCharactersInRange:NSMakeRange(0, 1) withString: lower];
    backingStore[key] = value;
}

- (instancetype)init {
    if (self = [super init]) {
        _backingStore = [NSMutableDictionary dictionary];
    }
    return self;
}

//  消息转发流程
+ (BOOL)resolveInstanceMethod:(SEL)sel {    //  消息转发流程1
    NSString *selectorStr = NSStringFromSelector(sel);
    if ([selectorStr hasPrefix:@"set"]) {
        class_addMethod(self, sel, (IMP)autoDictionarySetter, "v@:@");
    } else {
        class_addMethod(self, sel, (IMP)autoDictionaryGetter, "@@:");
    }
    return YES;
}

//+ (BOOL)resolveClassMethod:(SEL)sel { //  消息转发流程1
//
//}
//
//- (id)forwardingTargetForSelector:(SEL)aSelector {    //  消息转发流程2
//
//}
//
//- (void)forwardInvocation:(NSInvocation *)anInvocation {  //  消息转发流程3
//
//}

@end
