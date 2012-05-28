//
//  WebViewController.h
//  Glo Digital
//
//  Created by Kapilan Karunanathan on 5/5/12.
//  Copyright (c) 2012 We Are Designers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController{
    
    IBOutlet UIWebView *webView;
    
}

@property(nonatomic,retain) IBOutlet UIWebView *webView;

@end
