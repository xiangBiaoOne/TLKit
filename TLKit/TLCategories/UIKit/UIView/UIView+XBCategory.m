//
//  UIView+XBCategory.m
//  TLKit
//
//  Created by 合众通联 on 2018/12/20.
//  Copyright © 2018 李伯坤. All rights reserved.
//

#import "UIView+XBCategory.h"

@implementation UIView (XBCategory)

+ (instancetype)xb_instanceFromXib {
    NSArray *nib = [[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:nil options:nil];
    UIView *result = [nib objectAtIndex:0];
    return result;
}

@end
