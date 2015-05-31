//
//  JsonService.m
//  TravelGuide
//
//  Created by Amporn Sonthi on 5/18/2558 BE.
//  Copyright (c) 2558 Amporn Sonthi. All rights reserved.
//

#import "JsonService.h"

@implementation JsonService


@synthesize tJsonName,tJsonMail,tJsonTel;

-(void)JsonConnect {
    
    tJsonName = @"Name";
    tJsonMail = @"Gmail";
    tJsonTel  = @"Tel";
    
    maJsonObject = [[NSMutableArray alloc]init];
    
    NSData *ndJsonSource = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://localhost/api/travel.php"]];
    
    id idJsonObj = [NSJSONSerialization JSONObjectWithData:ndJsonSource options:NSJSONReadingMutableContainers error:nil];
    
    for (NSDictionary *ndicJsonId in idJsonObj) {
        
          tJsonName = [ndicJsonId objectForKey:@"Name"];
          tJsonMail = [ndicJsonId objectForKey:@"Gmail"];
          tJsonTel = [ndicJsonId objectForKey:@"Tel"];
        
         ndicJson = [NSDictionary dictionaryWithObjectsAndKeys:
                       tJsonName,@"Name",
                       tJsonMail,@"Gmail",
                       tJsonTel,@"Tel",
                       nil];
                       
        [maJsonObject addObject:ndicJson];
    }
}

@end
