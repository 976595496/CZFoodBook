//
//  CZRecipeModel.h
//  GourmetRecipes
//
//  Created by tarena on 16/4/2.
//  Copyright © 2016年 zcz. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CZRecipeResultModel,CZRecipeDataModel,CZRecipeStepsModel;
@interface CZRecipeRequestModel : NSObject

@property (nonatomic, strong) NSDictionary *result;
//resultcode->resultCode
@property (nonatomic, copy) NSString *resultCode;

@property (nonatomic, copy) NSString *reason;
//error_code -> errorCode
@property (nonatomic, assign) NSInteger errorCode;


- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)ModelWithDict:(NSDictionary *)dict;
@end




@interface CZRecipeResultModel : NSObject

@property (nonatomic, copy) NSString *totalNum;

@property (nonatomic, strong) NSArray<CZRecipeDataModel *> *data;

@property (nonatomic, copy) NSString *pn;

@property (nonatomic, copy) NSString *rn;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)ModelWithDict:(NSDictionary *)dict;

@end

@interface CZRecipeDataModel : NSObject<NSCoding>
/** 配料 */
@property (nonatomic, copy) NSString *burden;
/** 图片Url数组 */
@property (nonatomic, strong) NSArray<NSString *> *albums;
/** 描述 */
@property (nonatomic, copy) NSString *imtro;
//id -> Id
@property (nonatomic, copy) NSString *Id;
/** 主要食材 */
@property (nonatomic, copy) NSString *ingredients;
/** 菜名 */
@property (nonatomic, copy) NSString *title;

@property (nonatomic, strong) NSArray<CZRecipeStepsModel *> *steps;
/** 标签 */
@property (nonatomic, copy) NSString *tags;


- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)ModelWithDict:(NSDictionary *)dict;
@end
@interface CZRecipeStepsModel : NSObject<NSCoding>
/** 标签 */
@property (nonatomic, copy) NSString *img;
/** 步骤 */
@property (nonatomic, copy) NSString *step;



- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)ModelWithDict:(NSDictionary *)dict;
@end




