//
//  FKViewController.m
//  demo_SDWebImage
//
//  Created by doubanjiang on 09/16/2019.
//  Copyright (c) 2019 doubanjiang. All rights reserved.
//

#import "FKViewController.h"

#import <SDWebImage/SDWebImage.h>

@interface FKViewController ()

@end

@implementation FKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    UIImageView *imgV = [[UIImageView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:imgV];
    
    [imgV sd_setImageWithURL:@""];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
