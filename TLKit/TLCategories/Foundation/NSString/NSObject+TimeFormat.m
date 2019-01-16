//
//  NSObject+TimeFormat.m
//  TLKit
//
//  Created by 合众通联 on 2019/1/16.
//  Copyright © 2019 李伯坤. All rights reserved.
//

#import "NSObject+TimeFormat.h"

@implementation NSObject (TimeFormat)

- (NSString *)xb_timeFormatChangeWithOriginISOTime:(NSString *)timeString {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
    NSDate *currentDate = [dateFormatter dateFromString:timeString];
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc]init];
    [outputFormatter setDateFormat:@"MM/dd/yyyy HH:mm:ss"];
    NSString *timeChanged = [outputFormatter stringFromDate:currentDate];
    return timeChanged;
}

@end
