//
//  ViewController.h
//  PostingToSpecificSocialMedia
//
//  Created by Misato Tina Alexandre on 10/2/13.
//  Copyright (c) 2013 Misato Tina Alexandre. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *textView;

- (IBAction)twitter:(id)sender;
- (IBAction)facebook:(id)sender;
@end
