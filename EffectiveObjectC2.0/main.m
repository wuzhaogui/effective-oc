//
//  main.m
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/6/26.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EOCPerson.h"
#import "EOCAutoDictionary.h"
#import <objc/runtime.h>
#import "NSString+EOCMyAddition.h"
#import "EOCLocation.h"
#import "NSString+MyMethod.h"
#import "NSString+MyMethod2.h"
#import "BlockTest.h"
#import "GCDTest.h"
#import "OCSinglton.h"

void test(void);
void test2(void);
void test3(void);

static void *associatedKey = @"associatedKey";

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        dispatch_sync(dispatch_get_main_queue(), ^{
//            NSLog(@"in main queue sync");
//        });
//        OCSinglton *singleton1 = [OCSinglton shareInstance];
//        OCSinglton *singleton2 = [OCSinglton shareInstance];
//        NSLog(@"%d", singleton1 == singleton2);
        NSDictionary<NSString *, NSString *> *dict = @{@"key1" : @"value1", @"key2" : @"value2", @"key3" : @"value3"};
        for (NSString *key in dict) {
            NSLog(@"%@ -> %@", key, dict[key]);
        }
        
        NSArray<NSNumber *> *array = @[@1, @3, @5];
        for (NSNumber *num in [array reverseObjectEnumerator]) {
            NSLog(@"%@", num);
        }
        
        [array enumerateObjectsUsingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            
        }];
        
        [dict enumerateKeysAndObjectsUsingBlock:^(NSString * _Nonnull key, NSString * _Nonnull obj, BOOL * _Nonnull stop) {
            
        }];
        
        [array enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            
        }];
        
        NSArray<NSNumber *> *anNSArray = @[@1, @2, @3, @4, @5];
        //  对象仍归arc所有
        CFArrayRef aCFArray = (__bridge CFArrayRef)(anNSArray);
//        __bridge_retained arc交出对象所有权
        
//        __bridge_transfer 反向转换
        NSLog(@"Size of array = %li", CFArrayGetCount(aCFArray));
        
//        CFMutableDictionaryRef aCFDictionary = CFDictionaryCreate(<#CFAllocatorRef allocator#>, <#const void **keys#>, <#const void **values#>, <#CFIndex numValues#>, <#const CFDictionaryKeyCallBacks *keyCallBacks#>, <#const CFDictionaryValueCallBacks *valueCallBacks#>)
    }
    return 0;
}

void test() {
    //  关联对象
    EOCPerson *person = [EOCPerson new];
    objc_setAssociatedObject(person, associatedKey, @"associatedValue", OBJC_ASSOCIATION_COPY_NONATOMIC);
    NSString *value = (NSString *)objc_getAssociatedObject(person, associatedKey);
    NSLog(@"%@", value);
}

void test2() {
    //  方法调配
    Method original = class_getInstanceMethod([NSString class], @selector(lowercaseString));
    Method swap = class_getInstanceMethod([NSString class], @selector(eoc_myLowercaseString));
    method_exchangeImplementations(original, swap);
    
    NSString *str = @"my Name is jax, a Ha";
//    NSString *str2 = [str eoc_myLowercaseString];
////    NSLog(@"%@", str2);
    [str lowercaseString];
}

void test3() {
    
//    descriptor
    //        EOCLocation *location = [[EOCLocation alloc] initWithTitle:@"热山大佛" latitude:1.1 longitude:2.2];
    //        NSLog(@"%@", location);
    
    
    //  浅拷贝、深拷贝
    EOCPerson *p1 = [[EOCPerson alloc] initWithFirstName:@"1" lastName:@"1"];
    EOCPerson *p2 = [[EOCPerson alloc] initWithFirstName:@"2" lastName:@"2"];
    EOCPerson *p3 = [[EOCPerson alloc] initWithFirstName:@"3" lastName:@"3"];
    NSArray *arr = @[p1, p2, p3];
    NSArray *arrCopy = arr.copy;
    for (int i = 0; i < arr.count; i ++) {
        //  collection 默认是浅拷贝
        NSLog(@"%d", arr[i] == arrCopy[i]);
    }
    [p1 addFriend:p2];
    [p1 addFriend:p3];
    
    EOCPerson *p1Copy = p1.copy;
    NSLog(@"%d", p1 == p1Copy);
    NSLog(@"%d", p1.friends == p1Copy.friends);
    [p1.friends enumerateObjectsUsingBlock:^(id  _Nonnull obj, BOOL * _Nonnull stop) {
        NSLog(@"%@", obj);
    }];
    [p1Copy.friends enumerateObjectsUsingBlock:^(id  _Nonnull obj, BOOL * _Nonnull stop) {
        NSLog(@"%@", obj);
    }];
    
    
    //  分类
    //  1.对方法做分类
    //  2.给类添加方法
    //  对分类中的方法重复h（包括和系统方法）我们添加的分类方法会覆盖系统方法、自己的分类谁最后编译 就执行谁
    NSLog(@"%@", [@"aBCdefgD" my_lowercaseString]);
}
