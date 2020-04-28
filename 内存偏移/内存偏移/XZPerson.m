//
//  XZPerson.m
//  内存偏移
//
//  Created by Alan on 4/23/20.
//  Copyright © 2020 zhaixingzhi. All rights reserved.
//

#import "XZPerson.h"

@implementation XZPerson
- (void)saySomething{
    NSLog(@"NB %s name==%@ %p",__func__,self.subject,self.subject);
}

@end
