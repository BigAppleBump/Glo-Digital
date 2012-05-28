//
//  PortfolioViewController.h
//  Glo Digital
//
//  Created by Kapilan Karunanathan on 5/5/12.
//  Copyright (c) 2012 We Are Designers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MFMailComposeViewController.h>

@interface PortfolioViewController : UIViewController <MFMailComposeViewControllerDelegate>{


}


//Send email methods

-(IBAction)showPicker:(id)sender;
-(void)displayComposerSheet;
-(void)launchMailAppOnDevice;

@end
