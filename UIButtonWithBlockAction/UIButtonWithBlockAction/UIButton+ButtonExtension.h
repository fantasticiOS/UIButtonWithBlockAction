//
//  UIButton+ButtonExtension.h
//  UIButtonWithBlockAction
//
//  Created by 张彤 on 3/24/16.
//  Copyright © 2016 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^ButtonActionBlock)(UIButton *sender);

@interface UIButton (ButtonExtension)
-(void)clickButtonWithControlEvents:(UIControlEvents )event  andBlock:(ButtonActionBlock)block;
@end
