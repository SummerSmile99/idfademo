//
//  ViewController.m
//  idfademo
//
//  Created by alan.xia on 16/7/15.
//  Copyright © 2016年 alan.xia. All rights reserved.
//

#import "ViewController.h"
#import <AdSupport/AdSupport.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *idfaText;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getIdfaClick:(id)sender
{
    NSString *adId = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    NSLog(@"adid : %@",adId);
    self.idfaText.text = adId;
}

#pragma mark - CloseKeyBoard
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    if (![self.idfaText isExclusiveTouch]) {
        [self.idfaText resignFirstResponder];
    }
}


@end
