//
//  HorizontalScrollCell.h
//  HorizontalScrollView_Example
//
//  Created by cqz on 2019/7/30.
//  Copyright © 2019 cqzhong. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HorizontalScrollCell : UICollectionViewCell

@property (nonatomic, strong) id obj;

-(UIViewController *)cd_viewController;
-(void)cellSelectRowAtIndexPath:(NSIndexPath *)indexPath;

@end

NS_ASSUME_NONNULL_END
