//
//  JsonService.h
//  TravelGuide
//
//  Created by Amporn Sonthi on 5/18/2558 BE.
//  Copyright (c) 2558 Amporn Sonthi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JsonService : NSObject {
 
    NSMutableArray *maJsonObject;
    NSDictionary *ndicJson;
    
    NSString *tJsonName,*tJsonMail,*tJsonTel;
}

@property(nonatomic,strong)NSString *tJsonName,*tJsonMail,*tJsonTel;

@property(nonatomic,strong)NSMutableArray *maJsonObject;
@property(nonatomic,strong)NSDictionary *ndicJson;

-(void)JsonConnect;

@end
