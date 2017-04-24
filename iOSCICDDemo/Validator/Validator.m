//
//  Validator.m
//  TinyTorch
//
//  Created by Basawaraj on 20/02/17.
//  Copyright © 2017 TinyTorch. All rights reserved.
//

#import "Validator.h"

#define REGEX_EMAIL @"^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"
#define MAX_USERNAME_LENGTH 4
#define MAX_PASSWORD_LENGTH 8

@implementation Validator

+(BOOL) isEmpty:(NSString *) text{
    return text.length == 0;
}

+(BOOL) validateEmail:(NSString *) email {
    NSString *emailRegex = REGEX_EMAIL;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject: email];
}

+(BOOL) validateUserName:(NSString *) username {
    return username.length >= MAX_USERNAME_LENGTH;
}

+(BOOL) validatePassword:(NSString *) password {
    return password.length >= MAX_PASSWORD_LENGTH;
}

+(BOOL) validateMatchPassword:(NSString *) password confirmPassword:(NSString *) confirmPassword {
    return [password isEqualToString:confirmPassword];
}


@end
