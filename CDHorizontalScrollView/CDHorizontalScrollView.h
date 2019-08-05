//
//  CDHorizontalScrollView.h
//  CDHorizontalScrollView_Example
//
//  Created by cqz on 2019/8/5.
//  Copyright © 2019 cqzhong. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol CDHorizontalScrollViewDelegate;

@interface CDHorizontalScrollView : UIView

@property (nonatomic, strong, readonly) UICollectionView *collectionView;

- (instancetype)initWithFrame:(CGRect)frame withClassCell:(Class)classCell
                 withDelegate:(id<CDHorizontalScrollViewDelegate>)deleagte;

/**
 *  重新加载
 */
- (void)reloadData;


- (void)scrollToIndex: (NSInteger)index;

//- (void)addRefreshEvent;

@end



@protocol CDHorizontalScrollViewDelegate <NSObject>

@optional
/**
 *  总列数
 */
- (NSArray *)numberOfColumnsInCollectionView:(CDHorizontalScrollView *)collectionView;

//每个item大小
- (CGSize)cellSizeForItemAtIndexPath:(NSIndexPath *)indexPath;
//上左下右
- (UIEdgeInsets)collectionViewInsetForSectionAtIndex:(NSInteger)section;
//每个item之间的间距
- (CGFloat)collectionViewMinimumInteritemSpacingForSectionAtIndex:(NSInteger)section;

- (void)willDisplayCell:(UICollectionViewCell *)cell forItemAtIndexPath:( NSIndexPath *)indexPath;

- (void)didselectItemAtIndexPath:(NSIndexPath *)indexPath;

- (void)hotizontalScrollViewDidScroll: (UIScrollView *)scrollView;


@end

