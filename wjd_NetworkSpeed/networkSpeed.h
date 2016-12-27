//
//  networkSpead.h
//  测试网速
//
//  Created by WangJiadong on 2016/12/27.
//  Copyright © 2016年 WangJiadong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface networkSpeed : NSObject
- (long long)getInternetface;
- (long long) getInterfaceBytes;
+ (long long)getInternetface;
+ (long long) getInterfaceBytes;
@end
