//
//  ViewController.m
//  内存偏移
//
//  Created by Alan on 4/23/20.
//  Copyright © 2020 zhaixingzhi. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import "XZPerson.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//        // 栈的内存连续
//        int a = 1;
//        int b = 2;
//        int c = 3;
//        int d = 4;
//        NSLog(@"\na = %p\nb = %p\nc = %p\nd = %p\n",&a,&b,&c,&d);
        
        
        /**
         1: [(__bridge id)pp saySomething]; 程序能否运行
         2: 为什么能够执行和实例对象一样的效果
         3: self.name 打印什么 <ViewController: 0x7f96640093e0>
         */
    
    
    
    NSString *tem = @"Alan";
    // p -> XZPerson 实例对象
    XZPerson *p = [XZPerson alloc];
    p.subject = @"subject";
    [p saySomething];
    id pcls = [XZPerson class];
    void *pp= &pcls;
    [(__bridge id)pp saySomething];
    NSLog(@"栈地址：\n tem ==%p\n p==%p\npcls==%p\npp==%p\n",&tem,&p,&pcls,&pp);
    
    
    NSLog(@"pp-->%p  \n cls ==%p\n  p-->%p   tem-->%p  ",&pp,&pcls,&p,&tem);
//0x10beb0638 cls
//0x10beae020 tem
//0x10beae040  p.subject

    NSLog(@"面试题");


    // Do any additional setup after loading the view.
}


@end
