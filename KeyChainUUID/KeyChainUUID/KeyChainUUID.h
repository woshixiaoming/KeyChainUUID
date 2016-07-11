//
//  KeyChainUUID.h
//  iOSClient
//
//  Created by zlm on 16/7/6.
//  Copyright © 2016年 YeaLink. All rights reserved.
//使用前需要引入Security.framework

#import <Foundation/Foundation.h>


@interface KeyChainUUID : NSObject

+(NSString*)getUUID;//获取UUID

@end
