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

@property (nonatomic, strong) UIImageView *imgV;

@end

@implementation FKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.imgV = [[UIImageView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.imgV];
    [self.imgV setContentMode:UIViewContentModeScaleAspectFit];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.imgV sd_setImageWithURL:[NSURL URLWithString:@"https://github.com/FelixScat/Pub/blob/master/image/retainCircle.png?raw=true"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Getter

- (UIImageView *)imgV {
    if (!_imgV) {
        _imgV = [[UIImageView alloc] init];
    }
    return _imgV;
}

@end
