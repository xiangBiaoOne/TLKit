//
//  NSObject+TimeFormat.h
//  TLKit
//
//  Created by 合众通联 on 2019/1/16.
//  Copyright © 2019 李伯坤. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (TimeFormat)

- (NSString *)xb_timeFormatChangeWithOriginISOTime:(NSString *)timeString;

@end

NS_ASSUME_NONNULL_END
