//
//  TPUserInfo.m
//  travelphoto
//
//  Created by Kakigi Katuyuki on 2014/11/24.
//  Copyright (c) 2014年 Kakigi Katuyuki. All rights reserved.
//

#import "TPUserInfo.h"

@implementation TPUserInfo

+ (TPUserInfo *)sharedInstance {
  static TPUserInfo *sharedInstance;
  static dispatch_once_t pred;
  dispatch_once(&pred, ^{
    sharedInstance = [[TPUserInfo alloc] init];
  });
  
  return sharedInstance;
  
}

- (NSString *)loadEmail {
  NSString *email = [[LUKeychainAccess standardKeychainAccess] objectForKey:@"email"];
  return email;
}

- (void)saveEmail:(NSString *)email {
  [[LUKeychainAccess standardKeychainAccess] setObject:email forKey:@"email"];
}

- (NSString *)loadPassword {
  NSString *email = [[LUKeychainAccess standardKeychainAccess] objectForKey:@"password"];
  return email;
}

- (void)savePassword:(NSString *)password {
  [[LUKeychainAccess standardKeychainAccess] setObject:password forKey:@"password"];
}

@end
