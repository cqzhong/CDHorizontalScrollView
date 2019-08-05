//
//  HomeHorizontalCollectionViewCell.h
//  HorizontalScrollView_Example
//
//  Created by cqz on 2019/8/5.
//  Copyright © 2019 cqzhong. All rights reserved.
//


#define __MAIN_SCREEN_HEIGHT__      MAX([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)
#define __MAIN_SCREEN_WIDTH__       MIN([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)
#define __MAIN_SCREEN_BOUNDS__      [[UIScreen mainScreen] bounds]

#define  CDSCALE_W                 (__MAIN_SCREEN_WIDTH__ / 375.0) //(IS_IPHONE ? (__MAIN_SCREEN_WIDTH__ / 375.0) : (__MAIN_SCREEN_WIDTH__ / 768.0))
#define  CDSCALE_H                 (__MAIN_SCREEN_WIDTH__ / 375.0) //(IS_IPHONE ? (__MAIN_SCREEN_WIDTH__ / 375.0) : (__MAIN_SCREEN_HEIGHT__ / 1024.0))

#define  CDREALVALUE_WIDTH(w)      (CDSCALE_W * w)
#define  CDREALVALUE_HEIGHT(h)     (CDSCALE_H * h)



#import "CDHorizontalScrollCell.h"


@interface HomeHorizontalCollectionViewCell : CDHorizontalScrollCell


@end
