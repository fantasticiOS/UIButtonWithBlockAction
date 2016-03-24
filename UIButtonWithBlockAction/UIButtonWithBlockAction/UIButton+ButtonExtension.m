//
//  UIButton+ButtonExtension.m
//  UIButtonWithBlockAction
//
//  Created by 张彤 on 3/24/16.
//  Copyright © 2016 itcast. All rights reserved.
//

#import "UIButton+ButtonExtension.h"
#import <objc/runtime.h>
#define kButtonBlockKey @"ButtonBlockKey"
@implementation UIButton (ButtonExtension)
-(void)clickButtonWithControlEvents:(UIControlEvents )event  andBlock:(ButtonActionBlock)block{
    
    [self addTarget:self action:@selector(buttonClicked:) forControlEvents:event];
    
    objc_setAssociatedObject(self, kButtonBlockKey, block, OBJC_ASSOCIATION_COPY);



}

-(void)buttonClicked:(UIButton *)sender{

    ButtonActionBlock block=objc_getAssociatedObject(sender, kButtonBlockKey);
    if(block){
    block(sender);
    }

}
@end
