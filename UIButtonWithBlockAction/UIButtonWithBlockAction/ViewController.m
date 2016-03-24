//
//  ViewController.m
//  UIButtonWithBlockAction
//
//  Created by 张彤 on 3/24/16.
//  Copyright © 2016 itcast. All rights reserved.
//

#import "ViewController.h"
#import "MyUtility.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button=[MyUtility getBlockButtonWithTitle:@"按钮" selectedImgName:@"img_selected" normalImgName:@"img_Normal" controlEvents:UIControlEventTouchUpInside andTriggerEvent:^{
        UILabel *label=[[UILabel alloc]init];
        
        label.text=@"标签";
        label.frame=CGRectMake(50, 50, 100, 100);
        [self.view addSubview:label];
        
    }];
    
    
    
    button.frame=CGRectMake(100, 200, 100, 50);
    button.backgroundColor=[UIColor orangeColor];
    [self.view addSubview:button];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
