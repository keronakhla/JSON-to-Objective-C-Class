//
//  Person.m
//  JSON-to-Objective-C-Class
//
//  Created by Kerolos Nakhla on 7/2/17.
//  Copyright © 2017 Kerolos Nakhla. All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

-(instancetype)initWithJSONString:(NSString *)JSONString {
    self = [super init];
    if (self) {
        
        NSError *error = nil;
        NSData *JSONData = [JSONString dataUsingEncoding:NSUTF8StringEncoding];
        NSDictionary *JSONDictionary = [NSJSONSerialization JSONObjectWithData:JSONData options:0 error:&error];
        
        if (!error && JSONDictionary) {
            [self setValuesForKeysWithDictionary:JSONDictionary];
        }
    }
    return self;
}

@end
