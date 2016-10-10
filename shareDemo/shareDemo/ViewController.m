//
//  ViewController.m
//  shareDemo
//
//  Created by liuyuantao on 16/10/10.
//  Copyright © 2016年 liuyuantao. All rights reserved.
//

#import "ViewController.h"
#import "ShareView.h"

@interface ViewController ()
@property(nonatomic, strong)ShareView *shareView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.shareView = [[ShareView alloc] init];
    self.shareView.frame = CGRectMake(50, 100, 200, 200);
    [self.view addSubview:self.shareView];
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
