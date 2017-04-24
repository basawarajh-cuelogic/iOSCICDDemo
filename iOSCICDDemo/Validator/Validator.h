//
//  Validator.h
//  TinyTorch
//
//  Created by Basawaraj on 20/02/17.
//  Copyright © 2017 TinyTorch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Validator : NSObject

+(BOOL) isEmpty:(NSString *) text;
+(BOOL) validateEmail:(NSString *) email;
+(BOOL) validateUserName:(NSString *) username;
+(BOOL) validatePassword:(NSString *) password;
+(BOOL) validateMatchPassword:(NSString *) password confirmPassword:(NSString *) confirmPassword;

@end
