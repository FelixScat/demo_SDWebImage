//
//  FKViewController.m
//  demo_SDWebImage
//
//  Created by doubanjiang on 09/16/2019.
//  Copyright (c) 2019 doubanjiang. All rights reserved.
//

#import "FKViewController.h"

#import <SDWebImage/SDWebImage.h>

#import <CoreFoundation/CoreFoundation.h>

@interface FKViewController ()

@property (nonatomic, strong) NSThread *thread;

@property (nonatomic, strong) NSPort *port;

@end

@implementation FKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
}

- (void)selfThread:(id)obj {
    
//    @autoreleasepool {
    
        [[NSRunLoop currentRunLoop] run];
        [[NSRunLoop currentRunLoop] addPort:self.port forMode:NSDefaultRunLoopMode];
//    }
}

- (void)someBussiness {
    
//    for (int i = 0; i < 10e5 * 2; i++) {
//        NSString *str = [NSString stringWithFormat:@"%d", i];
//    }
//    NSLog(@"finish");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self performSelector:@selector(someBussiness) onThread:self.thread withObject:nil waitUntilDone:false];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSThread *)thread {
    if (!_thread) {
        _thread = [[NSThread alloc] initWithTarget:self selector:@selector(selfThread:) object:nil];
        [_thread start];
    }
    return _thread;
}

- (NSPort *)port {
    if (!_port) {
        _port = [NSPort port];
    }
    return _port;
}


@end
