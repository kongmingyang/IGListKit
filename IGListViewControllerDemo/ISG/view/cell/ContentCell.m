//
//  ContentCell.m
//  IGListViewControllerDemo
//
//  Created by 明孔 on 2019/10/28.
//  Copyright © 2019 明孔. All rights reserved.
//

#import "ContentCell.h"
#import <Masonry/Masonry.h>
@implementation ContentCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor whiteColor];
        
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
    
    UIView *picView = [[UIView alloc]init];
    picView.backgroundColor = [UIColor orangeColor];
    [self.contentView addSubview:picView];
    
    [picView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(@10);
        make.top.equalTo(contentLb.mas_bottom).offset(10);
        make.height.equalTo(@130);
    }];
    self.contentLb = contentLb;
    self.picView = picView;

}
-(void)setIsgModel:(ISGModel *)isgModel{
    _isgModel = isgModel;
    self.contentLb.text = _isgModel.content;
   
    
}
@end
