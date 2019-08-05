//
//  HomeCollectionViewCell.m
//  HorizontalScrollView_Example
//
//  Created by cqz on 2019/8/5.
//  Copyright © 2019 cqzhong. All rights reserved.
//

#import "HomeCollectionViewCell.h"
#import "HorizontalScrollView.h"

@interface HomeCollectionViewCell () <HorizontalScrollViewDelegate>

@property (nonatomic, strong) HorizontalScrollView *horizontalScrollView;
@property (nonatomic, strong) NSArray *array;
@end

@implementation HomeCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        [self setupView];
    }
    return self;
}
#pragma mark - Intial Methods
- (void)setupView {
    
    [self.contentView addSubview:self.horizontalScrollView];
    
    self.array = @[@"text1", @"text2", @"text3", @"text4", @"text5", @"text6", @"text7", @"text8", @"text9"];
    [self.horizontalScrollView reloadData];
}
#pragma mark - Target Methods

#pragma mark - Public Methods

- (void)setupModel {
    
    
    
}

-(void)cellSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

#pragma mark - Private Method
- (void)layoutSubviews {
    [super layoutSubviews];
    
    
}
#pragma mark - HorizontalScrollViewDelegate
- (NSArray *)numberOfColumnsInCollectionView:(HorizontalScrollView *)collectionView {
    
    return [self.array copy];
}

//每个item大小
- (CGSize)cellSizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    return CGSizeMake(floor(CDREALVALUE_WIDTH(160.0)), floor(CDREALVALUE_HEIGHT(216.0)));
}
//上左下右
- (UIEdgeInsets)collectionViewInsetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(CDREALVALUE_HEIGHT(8), CDREALVALUE_WIDTH(16), CDREALVALUE_HEIGHT(8), CDREALVALUE_WIDTH(16));
}
//每个item之间的间距
- (CGFloat)collectionViewMinimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return CDREALVALUE_WIDTH(16);
}

- (void)didselectItemAtIndexPath:(NSIndexPath *)indexPath {
    
}
#pragma mark - Setter Getter Methods
- (HorizontalScrollView *)horizontalScrollView {
    if (!_horizontalScrollView) {
        _horizontalScrollView = [[HorizontalScrollView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, CGRectGetHeight(self.frame)) withClassCell:[HomeHorizontalCollectionViewCell class] withDelegate:self];
    }
    return _horizontalScrollView;
}

@end
