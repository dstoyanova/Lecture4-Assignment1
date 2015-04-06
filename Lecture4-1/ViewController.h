//
//  ViewController.h
//  Lecture4-1
//
//  Created by Desislava Stoyanova on 4/5/15.
//  Copyright (c) 2015 Desislava Stoyanova. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UIScrollView *commentsScrollView;
@property (weak, nonatomic) IBOutlet UITextView *postCommentTextView;
@property (weak, nonatomic) IBOutlet UIButton *postCommentButton;

@end
