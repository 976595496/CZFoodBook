//
//  NSObject+Parse.m
//  GourmetRecipes
//
//  Created by tarena on 16/4/9.
//  Copyright © 2016年 zcz. All rights reserved.
//

#import "NSObject+Parse.h"

@implementation NSObject (Parse)
- (NSString *)description{
    return [self yy_modelDescription];
}
+(id)parseJSON:(id)json{
    if ([json isKindOfClass:[NSDictionary class]]) {
        return [self yy_modelWithDictionary:json];
    }
    if ([json isKindOfClass:[NSArray class]]) {
        return [NSArray yy_modelArrayWithClass:[self class] json:json];
    }
    return json;
}
@end
