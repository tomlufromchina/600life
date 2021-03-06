//
//  IncomeRankModel.h
//  600生活
//
//  Created by iOS on 2019/12/26.
//  Copyright © 2019 灿男科技. All rights reserved.
//

#import "JSONModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface IncomeRankModel : JSONModel

@property (nonatomic,copy) NSString *username;
@property (nonatomic,copy) NSNumber *id;
@property (nonatomic,copy) NSString *total_earnings;
@property (nonatomic,copy) NSString *avatar;

@end

NS_ASSUME_NONNULL_END
