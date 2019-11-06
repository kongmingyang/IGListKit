//
//  ISGModel.m
//  IGListViewControllerDemo
//
//  Created by 明孔 on 2019/10/28.
//  Copyright © 2019 明孔. All rights reserved.
//

#import "ISGModel.h"

@implementation ISGModel
-(id<NSObject>)diffIdentifier{
    return  self.time;
}
-(BOOL)isEqualToDiffableObject:(id<IGListDiffable>)object{

    return [self isEqual:object];
}

@end
