//
//  PortFolioTableViewController.h
//  Glo Digital
//
//  Created by Kapilan Karunanathan on 5/5/12.
//  Copyright (c) 2012 We Are Designers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MFMailComposeViewController.h>

@interface PortFolioTableViewController : UITableViewController <MFMailComposeViewControllerDelegate>{
    
    
}

-(IBAction)callAction:(id)sender;

//Send email methods

-(IBAction)showPicker:(id)sender;
-(void)displayComposerSheet;
-(void)launchMailAppOnDevice;

@end

