//
//  IncomeRankTableViewCell.m
//  600生活
//
//  Created by iOS on 2019/12/26.
//  Copyright © 2019 灿男科技. All rights reserved.
//

#import "IncomeRankTableViewCell.h"

@interface IncomeRankTableViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *icon1; //排行图片
@property (weak, nonatomic) IBOutlet UILabel *rankLab;  //排名
@property (weak, nonatomic) IBOutlet UIImageView *userIcon; //用户头像
@property (weak, nonatomic) IBOutlet UILabel *nameLab;  //用户名字
@property (weak, nonatomic) IBOutlet UILabel *incomeLab;//收益


@property (weak, nonatomic) IBOutlet NSLayoutConstraint *icon1WidthCons;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *icon1HeightCons;


@property(nonatomic,strong)NSIndexPath* indexPath;

@end

@implementation IncomeRankTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)fullData:(IncomeRankModel*)incomeRankModel indexPath:(NSIndexPath*)indexPath;
{
    self.indexPath = indexPath;
    
    [self setupIcon1WithIndexPath:indexPath];
    [self setuprankLabWithIndexPath:indexPath];
}

-(void)setupIcon1WithIndexPath:(NSIndexPath*)indexPath
{
    if(indexPath.row == 0){
        self.icon1.image = [UIImage imageNamed:@"排行冠军"];
        self.icon1.hidden = NO;
        [self beginWobbleWithView:self.icon1];
        self.icon1WidthCons.constant = 38;
        self.icon1HeightCons.constant = 38;
    }else if(indexPath.row == 1){
        self.icon1.image = [UIImage imageNamed:@"排行亚军"];
        self.icon1.hidden = NO;
        self.icon1WidthCons.constant = 30;
        self.icon1HeightCons.constant = 30;
//        [self beginWobbleWithView:self.icon1];
    }else if(indexPath.row == 2){
        self.icon1.image = [UIImage imageNamed:@"排行季军"];
        self.icon1.hidden = NO;
        self.icon1WidthCons.constant = 26;
        self.icon1HeightCons.constant = 26;
//        [self beginWobbleWithView:self.icon1];
    }else{
        self.icon1.hidden = YES;
        [self endWobbleWithView:self.icon1];
    }
}

-(void)setuprankLabWithIndexPath:(NSIndexPath*)indexPath
{
    if(indexPath.row == 0){
        self.rankLab.hidden = YES;
     }else if(indexPath.row == 1){
         self.rankLab.hidden = YES;
     }else if(indexPath.row == 2){
        self.rankLab.hidden = YES;
     } else {
         self.rankLab.hidden = NO;
         self.rankLab.text = [NSString stringWithFormat:@"%lu",indexPath.row+1];
     }
}


-(void)beginWobbleWithView:(UIView*)view
{
    srand([[NSDate date] timeIntervalSince1970]);
    float rand=(float)random();
    CFTimeInterval t=rand*0.0000000001;
    
    [UIView animateWithDuration:0.1 delay:t options:0  animations:^
     {
         view.transform=CGAffineTransformMakeRotation(-0.05);
     } completion:^(BOOL finished)
     {
         [UIView animateWithDuration:0.1 delay:0 options:UIViewAnimationOptionRepeat|UIViewAnimationOptionAutoreverse|UIViewAnimationOptionAllowUserInteraction  animations:^
          {
              view.transform=CGAffineTransformMakeRotation(0.05);
          } completion:^(BOOL finished) {}];
     }];
}

-(void)endWobbleWithView:(UIView*)view
{

    [UIView animateWithDuration:0.1 delay:0 options:UIViewAnimationOptionAllowUserInteraction|UIViewAnimationOptionBeginFromCurrentState animations:^
     {
         view.transform=CGAffineTransformIdentity;
     } completion:^(BOOL finished) {}];
}

@end
