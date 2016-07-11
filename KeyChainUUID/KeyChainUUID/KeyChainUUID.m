//
//  KeyChainUUID.m
//  iOSClient
//
//  Created by zlm on 16/7/6.
//  Copyright © 2016年 YeaLink. All rights reserved.
//

#import "KeyChainUUID.h"
#import "SSKeychain.h"
@implementation KeyChainUUID
#define SERVICE_NAME @"UUID"  //key
#define ACCOUNT_NAME @"LB6734HPWJ.com.zlm"  //组织名称((appleid前缀).(bundleid前半部分))
+(NSString*)getUUID
{
    NSString* currentUUID = [SSKeychain passwordForService:SERVICE_NAME account:ACCOUNT_NAME];
    if (!currentUUID)
    {
        currentUUID = [KeyChainUUID setUUID];
    }
    return currentUUID;
}

+(NSString*)setUUID
{
    NSError* err = nil;
    NSString *uuid = [[NSUUID UUID] UUIDString];
    [SSKeychain setPassword:uuid forService:SERVICE_NAME account:ACCOUNT_NAME error:&err];
    if (err)
    {
        NSLog(@"----保存UUID失败:%@-----\n",err);
    }
    NSLog(@"----保存UUID成功:%@-----\n",uuid);
    return uuid;
}


@end
