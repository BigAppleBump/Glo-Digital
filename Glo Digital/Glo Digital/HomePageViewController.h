//
//  HomePageViewController.h
//  Glo Digital
//
//  Created by Kapilan Karunanathan on 5/4/12.
//  Copyright (c) 2012 We Are Designers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomePageViewController : UIViewController {

    NSArray *slowAnimation;
    NSArray *defaultAnimation;
    NSArray *fastAnimation;
    IBOutlet UIImageView *myUIImageViewObject;

}

@property(nonatomic, retain) IBOutlet UIImageView *myUIImageViewObject;

-(void)setDefaultAnim:(UIImageView *)imageView;


@end
