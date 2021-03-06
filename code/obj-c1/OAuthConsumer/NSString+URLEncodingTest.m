//
//  NSString+URLEncodingTest.m
//  OAuthConsumer
//
//  Created by Jon Crosby on 10/19/07.
//  Copyright 2007 Kaboomerang LLC. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.


#import "NSString+URLEncodingTest.h"


@implementation NSString_URLEncodingTest

- (void)testEncodedURLParameterString {
    //TODO gather complete set of test chars -> encoded values
    NSString *starter = @"\"<>\%{}|\\^`hello :/=,!$&'()*+;[]@#?";
    STAssertEqualObjects([starter encodedURLParameterString], @"\%22\%3C\%3E\%25\%7B\%7D\%7C\%5C\%5E\%60hello\%20\%3A\%2F\%3D\%2C\%21\%24\%26\%27\%28\%29\%2A\%2B\%3B\%5B\%5D\%40\%23\%3F", @"The string was not encoded properly.");
}

@end
