//
//  IGCommentC.m
//  IGListViewControllerDemo
//
//  Created by 明孔 on 2019/10/28.
//  Copyright © 2019 明孔. All rights reserved.
//

#import "IGCommentC.h"
#import "CommentCell.h"
@implementation IGCommentC

-(UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index{
    
    CommentCell *cell = [self.collectionContext dequeueReusableCellOfClass:[CommentCell class] forSectionController:self atIndex:index];
    cell.isgModel = self.isgModel;
    return cell;
    
}
-(CGSize)sizeForItemAtIndex:(NSInteger)index{
    return CGSizeMake([UIScreen mainScreen].bounds.size.width, 30);
}
-(void)didUpdateToObject:(id)object{
    _isgModel = object;
    NSLog(@"IGCommentC%@",object);
}
@end
