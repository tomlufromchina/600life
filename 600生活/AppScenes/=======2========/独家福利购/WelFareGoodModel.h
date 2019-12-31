//
//  WelFareGoodModel.h
//  600生活
//
//  Created by iOS on 2019/11/25.
//  Copyright © 2019 灿男科技. All rights reserved.
//

#import "JSONModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface WelFareGoodModel : JSONModel

@property (nonatomic,copy) NSNumber *volume;
@property (nonatomic,copy) NSNumber *id;
@property (nonatomic,copy) NSString *price;
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *all_earnings;
@property (nonatomic,copy) NSString *coupon_money;
@property (nonatomic,copy) NSString *quanhou_price;
@property (nonatomic,copy) NSNumber *type;
@property (nonatomic,copy) NSString *pict_url;
@property (nonatomic,copy) NSString *item_id;
@property (nonatomic,copy) NSString *earnings;

@end

NS_ASSUME_NONNULL_END
