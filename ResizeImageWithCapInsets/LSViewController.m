//
//  LSViewController.m
//  ResizeImageWithCapInsets
//
//  Created by Daniela on 7/9/13.
//  Copyright (c) 2013 Pyrogusto. All rights reserved.
//

#import "LSViewController.h"

@interface LSViewController ()
@property (weak, nonatomic) IBOutlet UIButton *aButton;
@property (weak, nonatomic) IBOutlet UILabel *aLabel;

@end

@implementation LSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //[self.aButton setBackgroundImage:[UIImage imageNamed:@"button"] forState:UIControlStateNormal];
    
    [self.aButton setBackgroundImage:[[UIImage imageNamed:@"button"] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10)] forState:UIControlStateNormal];

    [self.aButton setTitle: @"very very long text" forState:UIControlStateNormal];
    self.aLabel.frame = CGRectMake(100, 100, 200, [[self class]getRect:self.aLabel].size.height+100);
    self.aLabel.backgroundColor = [UIColor redColor];
}

+ (CGRect)getRect:(UILabel*)label{
    NSMutableDictionary *attributes = [NSMutableDictionary new];
    [attributes setObject:label.font forKey:NSFontAttributeName];
    CGRect textFrame = [label.text boundingRectWithSize:CGSizeMake(200, CGFLOAT_MAX) options: NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil];
    return textFrame;
}

@end
