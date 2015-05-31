//
//  CheckNetwork.m
//  TravelGuide
//
//  Created by Amporn Sonthi on 5/19/2558 BE.
//  Copyright (c) 2558 Amporn Sonthi. All rights reserved.
//

#import "CheckNetwork.h"

@interface CheckNetwork ()

@end

@implementation CheckNetwork

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

-(void)statusNetwork {
    
    Reachability *reachability = [Reachability reachabilityWithHostName:@"www.apple.com"];
    NetworkStatus networkStatus = [reachability currentReachabilityStatus];
    
    if(networkStatus == NotReachable){
        
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"App Alert" message:@"Please connect network" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        
//        [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
        
    }
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
