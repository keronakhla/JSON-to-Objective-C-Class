//
//  Person.h
//  JSON-to-Objective-C-Class
//
//  Created by Kerolos Nakhla on 7/2/17.
//  Copyright © 2017 Kerolos Nakhla. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *personFirstName;
@property NSString *personMiddleName;
@property NSString *personLastName;

-(instancetype)initWithJSONString:(NSString *)JSONString;

@end
