//
//  UILabel+ext.m
//  600生活
//
//  Created by iOS on 2019/11/7.
//  Copyright © 2019 灿男科技. All rights reserved.
//

#import "UILabel+ext.h"

@implementation UILabel (ext)

-(void)alignTop
{
    // 对应字号的字体一行显示所占宽高
    CGSize fontSize = [self.text sizeWithAttributes:@{NSFontAttributeName:self.font}];
    // 多行所占 height*line
    double height = fontSize.height*self.numberOfLines;
    // 显示范围实际宽度
    double width = self.frame.size.width;
    // 对应字号的内容实际所占范围
    CGSize stringSize = [self.text boundingRectWithSize:CGSizeMake(width, height) options:(NSStringDrawingUsesLineFragmentOrigin) attributes:@{NSFontAttributeName:self.font} context:nil].size;
    // 剩余空行
    NSInteger line = (height - stringSize.height) / fontSize.height;
    // 用回车补齐
    for (int i = 0; i < line; i++) {
        
      self.text = [self.text stringByAppendingString:@"\n "];
    }
}

-(void)alignBottom
{
    CGSize fontSize = [self.text sizeWithAttributes:@{NSFontAttributeName:self.font}];
    double height = fontSize.height*self.numberOfLines;
    double width = self.frame.size.width;
    CGSize stringSize = [self.text boundingRectWithSize:CGSizeMake(width, height) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:self.font} context:nil].size;
    
    NSInteger line = (height - stringSize.height) / fontSize.height;
    // 前面补齐换行符
    for (int i = 0; i < line; i++) {
        self.text = [NSString stringWithFormat:@" \n%@", self.text];
    }
}

@end
