//
//  HomePageRushGoodsListItem.h
//  600生活
//
//  Created by iOS on 2019/11/5.
//  Copyright © 2019 灿男科技. All rights reserved.
//

#import "JSONModel.h"

NS_ASSUME_NONNULL_BEGIN
@protocol HomePageRushGoodsListItem;
@interface HomePageRushGoodsListItem : JSONModel

@property (nonatomic,copy) NSString *price;
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSNumber *earnings;
@property (nonatomic,copy) NSString *coupon_total_count;
@property (nonatomic,copy) NSString *quanhou_price;
@property (nonatomic,copy) NSString *coupon_remain_count;
@property (nonatomic,copy) NSString *pict_url;
@property (nonatomic,copy) NSString *item_id;

@end

NS_ASSUME_NONNULL_END
