
//
//  CommentCell.m
//  IGListViewControllerDemo
//
//  Created by 明孔 on 2019/10/28.
//  Copyright © 2019 明孔. All rights reserved.
//

#import "CommentCell.h"
#import <Masonry/Masonry.h>
@implementation CommentCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setUI];
        
        
    }
    return self;
}
-(void)setUI{
    
    UILabel *contentLb = [[UILabel alloc]init];
    contentLb.textColor = [UIColor blackColor];
    contentLb.numberOfLines = 0;
    contentLb.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:contentLb];
    
    [contentLb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.equalTo(@15);
    }];
    
    self.contentLb = contentLb;
    
    
}

-(void)setIsgModel:(ISGModel *)isgModel{
    
    _isgModel = isgModel;
    self.contentLb.text = _isgModel.time;
    
}
@end
