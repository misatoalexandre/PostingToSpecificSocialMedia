//
//  ViewController.m
//  PostingToSpecificSocialMedia
//
//  Created by Misato Tina Alexandre on 10/2/13.
//  Copyright (c) 2013 Misato Tina Alexandre. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)twitter:(id)sender {
    self.textView.text=@"Post message to Twitter";
    //Pass the service type to the method, share.
    [self share:SLServiceTypeTwitter];
  
}

- (IBAction)facebook:(id)sender {
     self.textView.text=@"Post message to Facebook";
    //Pass the service type to the method, share.
    [self share:SLServiceTypeFacebook];
 
    
}


-(void)share:(NSString *)serviceType{
    if ([SLComposeViewController isAvailableForServiceType:serviceType]) {
        SLComposeViewController *slvc=[SLComposeViewController composeViewControllerForServiceType:serviceType];
        [slvc setInitialText:@"at school"];
        [slvc addImage:[UIImage imageNamed:@"IMG_4295.jpg"]];
        [self presentViewController:slvc animated:YES completion:nil];
    }else{
        
    
        if (serviceType == SLServiceTypeFacebook) {
           
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle: @"Couldn't reach Facebook."message:@"Please sign in to your Facebook account to activiate posting on Facebook." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];
            

        }else{
        
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Couldnt' reach Twitter." message:@"Please sign in to your Twitter account to activiate posting on Twitter." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];

        }
        
       
       
        
            }
}


@end
