//
//  IGContentC.m
//  IGListViewControllerDemo
//
//  Created by 明孔 on 2019/10/28.
//  Copyright © 2019 明孔. All rights reserved.
//

#import "IGContentC.h"
#import "ContentCell.h"
@implementation IGContentC
-(void)didUpdateToObject:(id)object{
     _isgModel = object;
    NSLog(@"IGContentC:%@",object);
}

-(UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index{
    
    ContentCell *cell = [self.collectionContext dequeueReusableCellOfClass:[ContentCell class] forSectionController:self atIndex:index];
    cell.isgModel = self.isgModel;
    return cell;
    
}
-(CGSize)sizeForItemAtIndex:(NSInteger)index{
    return CGSizeMake([UIScreen mainScreen].bounds.size.width, 160);
}
@end
