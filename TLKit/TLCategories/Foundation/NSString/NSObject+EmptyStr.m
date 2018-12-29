//
//  NSObject+EmptyStr.m
//  TLKit
//
//  Created by 合众通联 on 2018/12/29.
//  Copyright © 2018 李伯坤. All rights reserved.
//

#import "NSObject+EmptyStr.h"

@implementation NSObject (EmptyStr)

+ (BOOL)isEmpty:(NSString *)text {
    if ([text isEqual:[NSNull null]]) {
        return YES;
    } else if ([text isKindOfClass:[NSNull class]]) {
        return YES;
    } else if (text == nil) {
        return YES;
    }
    return NO;
}

@end
