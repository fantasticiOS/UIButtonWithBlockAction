//
//  MyUtility.h
//  UIButtonWithBlockAction
//
//  Created by 张彤 on 3/24/16.
//  Copyright © 2016 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef void (^UtilityBLock)();

@interface MyUtility : NSObject
+(UIButton *)getBlockButtonWithTitle:(NSString *)title selectedImgName:(NSString *)imgNameSelected normalImgName:(NSString *)imgNameNor controlEvents:(UIControlEvents)event andTriggerEvent:(UtilityBLock)blockUtility;







@end
