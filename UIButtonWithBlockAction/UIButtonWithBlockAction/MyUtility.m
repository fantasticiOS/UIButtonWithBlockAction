//
//  MyUtility.m
//  UIButtonWithBlockAction
//
//  Created by 张彤 on 3/24/16.
//  Copyright © 2016 itcast. All rights reserved.
//

#import "MyUtility.h"

#import "UIButton+ButtonExtension.h"


@implementation MyUtility
+(UIButton *)getBlockButtonWithTitle:(NSString *)title selectedImgName:(NSString *)imgNameSelected normalImgName:(NSString *)imgNameNor controlEvents:(UIControlEvents)event andTriggerEvent:(UtilityBLock)blockUtility{





    UIButton *button=[[UIButton alloc]init];
    
    UIImage *imageNormal=[UIImage imageNamed:imgNameNor];
    UIImage *imageSelected=[UIImage imageNamed:imgNameSelected];
    
    
    
    [button setBackgroundImage:imageNormal forState:UIControlStateNormal];
    [button setBackgroundImage:imageSelected forState:UIControlStateSelected];
    
    
    
    
    
    
    
    [button setTitle:title forState:UIControlStateNormal];
    
    
    
    button.layer.cornerRadius=12;
    button.layer.masksToBounds=YES;
    
    
    [button clickButtonWithControlEvents:UIControlEventTouchUpInside andBlock:^(UIButton *sender) {
        blockUtility(sender);
    }];
    
    return button;







}
@end
