//
//  XZPerson.h
//  内存偏移
//
//  Created by Alan on 4/23/20.
//  Copyright © 2020 zhaixingzhi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XZPerson : NSObject
@property (nonatomic, copy)NSString *name;
@property (nonatomic, copy)NSString *subject;
//@property (nonatomic)int age;

- (void)saySomething;

@end

NS_ASSUME_NONNULL_END
