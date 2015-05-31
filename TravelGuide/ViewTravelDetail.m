//
//  DetailViewController.m
//  TravelGuide
//
//  Created by Amporn Sonthi on 4/18/2558 BE.
//  Copyright (c) 2558 Amporn Sonthi. All rights reserved.
//

#import "ViewTravelDetail.h"
#import "CheckNetwork.h"

@interface  ViewTravelDetail()
@end

@implementation ViewTravelDetail

-(void)viewDidLoad{
    
    [super viewDidLoad];
    
    _detailLabel.text = _selectedItem;
    
    CheckNetwork *chkNetwork = [[CheckNetwork alloc]init];
    [chkNetwork statusNetwork];
    
    
    NSURL *url = [NSURL URLWithString:_selectedWeb];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:url];
    [_detailWeb loadRequest:requestURL];
    _detailWeb.delegate = self;
}

-(void)webViewDidFinishLoad:(UIWebView *)webView { //load complete
    //    [indicator stopAnimating];
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}

-(void)webView:(UIWebView *)wv didFailLoadWithError:(NSError *)error{ //net หลุด
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    
    NSString *errStr = [error localizedDescription]; // message error
    NSString *errCode = [NSString stringWithFormat:@"error %ld", (long)error.code];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:errCode message:errStr delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK",nil];
    
    [alert show];
}

@end
