//
//  IGContentC.h
//  IGListViewControllerDemo
//
//  Created by 明孔 on 2019/10/28.
//  Copyright © 2019 明孔. All rights reserved.
//

#import <IGListKit/IGListKit.h>
#import "ISGModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface IGContentC : IGListSectionController
@property (nonatomic,strong)ISGModel *isgModel;
@end

NS_ASSUME_NONNULL_END
