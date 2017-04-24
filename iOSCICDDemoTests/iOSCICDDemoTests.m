//
//  iOSCICDDemoTests.m
//  iOSCICDDemoTests
//
//  Created by Basawaraj on 24/04/17.
//  Copyright © 2017 Cuelogic. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Validator.h"

@interface iOSCICDDemoTests : XCTestCase

@end

@implementation iOSCICDDemoTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testValidateEmail {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *email = @"basawaraj.hiremath@gmail.com";
    XCTAssertFalse([Validator isEmpty:email],@"Email Empty");
    XCTAssertTrue([Validator validateEmail:email],@"Email Not Validated");
}

- (void)testValidatePassword {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *password = @"basawaraj123";
    XCTAssertFalse([Validator isEmpty:password],@"Password Empty");
    XCTAssertTrue([Validator validatePassword:password],@"Password Not Validated");
}

- (void)testEmailError {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *email = @"basawaraj.hiremath";
    XCTAssertFalse([Validator validateEmail:email],@"Email Validated");
}

- (void)testPasswordError {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *username = @"basawar";
    XCTAssertFalse([Validator validatePassword:username],@"Password Validated");
}

- (void)testUsernameError {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *username = @"bas";
    XCTAssertFalse([Validator validateUserName:username],@"Username Validated");
}

- (void)testUserNameError {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *username = @"basawar";
    XCTAssertFalse([Validator validatePassword:username],@"Password Validated");
}



- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
