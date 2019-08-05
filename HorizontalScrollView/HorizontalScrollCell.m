//
//  HorizontalScrollCell.m
//  HorizontalScrollView_Example
//
//  Created by cqz on 2019/7/30.
//  Copyright © 2019 cqzhong. All rights reserved.
//

#import "HorizontalScrollCell.h"

@implementation HorizontalScrollCell

-(UIViewController *)cd_viewController {
    id responder = self;
    while (responder){
        if ([responder isKindOfClass:[UIViewController class]]){
            return responder;
        }
        responder = [responder nextResponder];
    }
    return nil;
}
-(void)cellSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
