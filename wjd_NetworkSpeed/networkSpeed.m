//
//  networkSpead.m
//  测试网速
//
//  Created by WangJiadong on 2016/12/27.
//  Copyright © 2016年 WangJiadong. All rights reserved.
//

#import "networkSpeed.h"
#include <ifaddrs.h>
#include <arpa/inet.h>
#include <net/if.h>


@implementation networkSpeed

//返回网络流量速度
- (long long)getInternetface {
    
    long long speed = [self getInterfaceBytes];

    return speed;
    
}
+ (long long)getInternetface{

    return [self getInternetface];
}
+ (long long) getInterfaceBytes{

    return [self getInterfaceBytes];
}
/*获取网络流量信息*/

- (long long) getInterfaceBytes

{
    
    struct ifaddrs *ifa_list = 0, *ifa;
    
    if (getifaddrs(&ifa_list) == -1)
        
    {
        return 0;
    }

    uint32_t iBytes = 0;
    
    uint32_t oBytes = 0;
    

    for (ifa = ifa_list; ifa; ifa = ifa->ifa_next)
        
    {
        
        if (AF_LINK != ifa->ifa_addr->sa_family)
            
            continue;
 
        if (!(ifa->ifa_flags & IFF_UP) && !(ifa->ifa_flags & IFF_RUNNING))
            
            continue;

        if (ifa->ifa_data == 0)
            
            continue;

        /* Not a loopback device. */
        
        if (strncmp(ifa->ifa_name, "lo", 2))
            
        {
            struct if_data *if_data = (struct if_data *)ifa->ifa_data;

            iBytes += if_data->ifi_ibytes;
            
            oBytes += if_data->ifi_obytes;
            
        }
        
    }
    
    freeifaddrs(ifa_list);
    
    return iBytes + oBytes;
    
}

@end
