//
//  IGListViewController.m
//  IGListViewControllerDemo
//
//  Created by 明孔 on 2019/10/28.
//  Copyright © 2019 明孔. All rights reserved.
//

#import "IGListViewController.h"
#import <IGListKit/IGListKit.h>
#import "IGContentC.h"
#import "IGCommentC.h"
#import "ISGModel.h"
@interface IGListViewController ()<IGListAdapterDataSource>
@property (nonatomic,strong)UICollectionView *collectionView;
@property (nonatomic,strong) IGListAdapter *adapter;
@property (nonatomic,strong) ISGModel *model;
@property (nonatomic,strong)NSMutableArray *objcts;

@end

@implementation IGListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.view.backgroundColor = [UIColor whiteColor];
    
    for (int i = 0; i<20; i++) {
        ISGModel *model = [ISGModel new];
        model.content = [NSString stringWithFormat:@"IGList%d",i];
        model.time = [NSString stringWithFormat:@"time%d",i*10];
        [self.objcts addObject:model];
    }
    
    self.adapter.dataSource = self;
    self.adapter.collectionView = self.collectionView;
   
    [self.view addSubview:self.collectionView];
    self.collectionView.frame = self.view.bounds;
    
    
    
}
-(NSArray<id<IGListDiffable>> *)objectsForListAdapter:(IGListAdapter *)listAdapter{
    return self.objcts;
}

-(IGListSectionController *)listAdapter:(IGListAdapter *)listAdapter sectionControllerForObject:(id)object{
    IGListStackedSectionController *stack = [[IGListStackedSectionController alloc]initWithSectionControllers:@[[IGContentC new],[IGCommentC new]]];
//    stack.inset = UIEdgeInsetsMake(-60, 10, 10, 10);
    
    IGListSectionController *sectionVC = nil;
    if ([object isKindOfClass:[ISGModel class]]) {
        sectionVC = [IGContentC new];
    }
    return sectionVC;
    
}

- (nullable UIView *)emptyViewForListAdapter:(nonnull IGListAdapter *)listAdapter {
    
    UIView *emptyView = [[UIView alloc]init];
    return emptyView;
}




-(UICollectionView *)collectionView{
    if (!_collectionView) {
        UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
        _collectionView = [[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:layout];
        _collectionView.backgroundColor = [UIColor whiteColor];
        if (@available(iOS 11.0, *)) {
            _collectionView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        } else {
            self.automaticallyAdjustsScrollViewInsets = NO;
        }
    }
    return _collectionView;
}
-(IGListAdapter *)adapter{
    if (!_adapter) {
        _adapter = [[IGListAdapter alloc]initWithUpdater:[IGListAdapterUpdater new] viewController:self];
        _adapter.scrollViewDelegate = self;
    }
    return _adapter;
}
-(NSMutableArray *)objcts{
    if (!_objcts) {
        _objcts = [NSMutableArray array];
    }
    return _objcts;
}


@end
