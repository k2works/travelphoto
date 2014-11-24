//
//  TPUserInfo.h
//  travelphoto
//
//  Created by Kakigi Katuyuki on 2014/11/24.
//  Copyright (c) 2014年 Kakigi Katuyuki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LUKeychainAccess.h"

@interface TPUserInfo : NSObject

+ (TPUserInfo *)sharedInstance;

- (NSString *)loadEmail;
- (NSString *)saveEmail;
- (NSString *)loadPassword;
- (NSString *)savePassword;

@end
