//
//  CDHorizontalScrollCell.m
//  CDHorizontalScrollView_Example
//
//  Created by cqz on 2019/8/5.
//  Copyright © 2019 cqzhong. All rights reserved.
//

#import "CDHorizontalScrollCell.h"

@implementation CDHorizontalScrollCell

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
