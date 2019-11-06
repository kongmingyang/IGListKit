//
//  CommentCell.h
//  IGListViewControllerDemo
//
//  Created by 明孔 on 2019/10/28.
//  Copyright © 2019 明孔. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ISGModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface CommentCell : UICollectionViewCell
@property (nonatomic,strong)ISGModel *isgModel;
@property (nonatomic,strong)UILabel *contentLb;
@end

NS_ASSUME_NONNULL_END
