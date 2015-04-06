//
//  ViewController.m
//  Lecture4-1
//
//  Created by Desislava Stoyanova on 4/5/15.
//  Copyright (c) 2015 Desislava Stoyanova. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    CGFloat commentOriginY;
    NSString* commentedImage;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    commentOriginY = 0;
    
    self.postCommentTextView.hidden = YES;
    self.postCommentButton.hidden = YES;
    
    [self.imageView1 setImage:[UIImage imageNamed:@"529f438bf0585.png"]];
    [self.imageView2 setImage:[UIImage imageNamed:@"529f436834068.png"]];
    
    self.commentsScrollView.scrollEnabled = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)addCommentToImage1:(id)sender {
    self.postCommentTextView.hidden = NO;
    self.postCommentButton.hidden = NO;
    
    commentedImage = [NSString stringWithFormat:@"iPhone4Small.jpg"];
}

- (IBAction)addCommentToImage2:(id)sender {
    self.postCommentTextView.hidden = NO;
    self.postCommentButton.hidden = NO;
    
    commentedImage = [NSString stringWithFormat:@"iPhone3Small.jpg"];
}

- (IBAction)postComment:(id)sender {
    UIImageView* temp = [[UIImageView alloc] initWithFrame:CGRectMake(0, commentOriginY, 60, 60)];
    [temp setImage:[UIImage imageNamed:commentedImage]];
    
    UILabel* commentLabel = [[UILabel alloc] initWithFrame:CGRectMake(70, commentOriginY, 210, 60)];
    commentLabel.text = self.postCommentTextView.text;
    
    commentOriginY = commentOriginY + 70;
    
    [self.commentsScrollView addSubview:temp];
    [self.commentsScrollView addSubview:commentLabel];
    
    self.commentsScrollView.contentSize = CGSizeMake(280,commentOriginY);
    
    self.postCommentTextView.hidden = YES;
    self.postCommentButton.hidden = YES;
    
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Success"
                                                    message:@"Your comment has been added successfully."
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:@"Cancel", nil];
    [alert show];
}

@end
