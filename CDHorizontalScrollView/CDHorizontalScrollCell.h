//
//  CDHorizontalScrollCell.h
//  CDHorizontalScrollView_Example
//
//  Created by cqz on 2019/8/5.
//  Copyright © 2019 cqzhong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CDHorizontalScrollCell : UICollectionViewCell

@property (nonatomic, strong) id obj;

-(UIViewController *)cd_viewController;
-(void)cellSelectRowAtIndexPath:(NSIndexPath *)indexPath;


@end
