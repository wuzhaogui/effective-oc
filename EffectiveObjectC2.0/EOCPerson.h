//
//  EOCPerson.h
//  EffectiveObjectC2.0
//
//  Created by 伍兆贵 on 2020/6/26.
//  Copyright © 2020 伍兆贵. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "EOCEmployer.h"

//  在类的头文件中尽量少引用其他头文件

//  @class 向前声明一个类。将头文件引入时机尽量延后.
//
//  避免可能存在的循环引用
//  减少编译时间、降低耦合
//
//  如果实在无法避免、要引入部分 放到分类中或是单独的o头文件
@class EOCEmployer;

//  extern 关键字告诉编译器，在全局符号表中将有一个EOCStringConstant符号
extern NSString * _Nullable const EOCStringConstant;

NS_ASSUME_NONNULL_BEGIN

@interface EOCPerson : NSObject <NSCopying>

//  @property 封装对象数据
//  属性特质
/**
 *  1.原子性 nonatomic、atomic
    2.读写权限 readonly、readwrite
    3.内存管理语义
    4.方法名
 */

@property (nonatomic, copy, readonly) NSString *firstName;
@property (nonatomic, copy, readonly) NSString *lastName;
@property (nonatomic, strong) EOCEmployer *employer;

- (instancetype)initWithFirstName:(NSString *)firstName
                         lastName:(NSString *)lastName;

//  优点：直接访问实例变量，不走方法委派 速度快

//  缺点：不走设置方法：绕过内存管理语义、不会触发kvo

//  折中：写入用设置方法，读取直接访问实例变量
//  （初始化方法、delloc方法直接访问实例变量）(如果懒加载的话，则必须通过存取方法访问属性)

@property (nonatomic, strong, readonly) NSSet *friends;
- (void)addFriend:(EOCPerson *)person;
- (void)removeFriend:(EOCPerson *)person;


@end

NS_ASSUME_NONNULL_END
