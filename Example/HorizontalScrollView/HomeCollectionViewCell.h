//
//  HomeCollectionViewCell.h
//  HorizontalScrollView_Example
//
//  Created by cqz on 2019/8/5.
//  Copyright © 2019 cqzhong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeHorizontalCollectionViewCell.h"

@interface HomeCollectionViewCell : UICollectionViewCell



- (void)setupModel;

-(void)cellSelectRowAtIndexPath:(NSIndexPath *)indexPath;

@end
