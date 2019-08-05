//
//  HomeHorizontalCollectionViewCell.m
//  HorizontalScrollView_Example
//
//  Created by cqz on 2019/8/5.
//  Copyright © 2019 cqzhong. All rights reserved.
//

#import "HomeHorizontalCollectionViewCell.h"
#import <Masonry/Masonry.h>



#define random(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)/255.0]

#define randomColor random(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

@interface HomeHorizontalCollectionViewCell ()

@property (nonatomic, strong) UILabel *nameLabel;
@end

@implementation HomeHorizontalCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        [self setupView];
    }
    return self;
}
#pragma mark - Intial Methods
- (void)setupView {

    [self.contentView addSubview:self.nameLabel];
    
    self.nameLabel.backgroundColor = randomColor;
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.edges.equalTo(self.contentView);
    }];
}
#pragma mark - Target Methods

#pragma mark - Public Methods
-(void)cellSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

#pragma mark - Private Method


#pragma mark - Setter Getter Methods
- (void)setObj:(id)obj {
    
    if ([obj isKindOfClass:[NSString class]]) {
        
        self.nameLabel.text = [NSString stringWithFormat:@"%@", obj];
    }
}

- (UILabel *)nameLabel {
    if (!_nameLabel) {
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel.font = [UIFont systemFontOfSize:20];
        _nameLabel.textColor = [UIColor blackColor];
        _nameLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _nameLabel;
}


@end
