//
//  ViewContacts.m
//  TravelGuide
//
//  Created by Amporn Sonthi on 5/18/2558 BE.
//  Copyright (c) 2558 Amporn Sonthi. All rights reserved.
//

#import "ViewContacts.h"
#import "JsonService.h"
#import "XMLSevice.h"

@interface ViewContacts ()

@end

@implementation ViewContacts

- (void)viewDidLoad {
    [super viewDidLoad];
    
    JsonService *jsonSer = [[JsonService alloc]init];
    [jsonSer JsonConnect];
    
    _lContactName.text = jsonSer.tJsonName;
    _lContactMail.text = jsonSer.tJsonMail;
    _lContactTel.text = jsonSer.tJsonTel;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
