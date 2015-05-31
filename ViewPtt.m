//
//  DisplayWebserivce.m
//  TravelGuide
//
//  Created by Amporn Sonthi on 4/28/2558 BE.
//  Copyright (c) 2558 Amporn Sonthi. All rights reserved.

#import "ViewPtt.h"
#import "SMXMLDocument.h"

@interface ViewPtt()

@end

@implementation ViewPtt

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self callWebserice];
}

-(void)callWebserice { // 

    NSString* tSoapMessage = NSLocalizedString(@"WS_SOAP_REQUEST", @"");
    NSString* tURLWeb = @"http://www.pttplc.com/webservice/pttinfo.asmx";
    NSString* tSoapAction = @"http://www.pttplc.com/ptt_webservice/CurrentOilPrice";

    NSURL *uURL = [NSURL URLWithString:tURLWeb];
    NSMutableURLRequest *murRequest = [NSMutableURLRequest requestWithURL:uURL];
    NSString *tLenght = [NSString stringWithFormat:@"%d",[tSoapMessage length]];

    [murRequest addValue:@"text/xml; charset-utf-8" forHTTPHeaderField:@"Content-type"];
    [murRequest addValue:tSoapAction forHTTPHeaderField:@"SOAPACTION"];
    [murRequest addValue:tLenght forHTTPHeaderField:@"Content-Length"];
    [murRequest setHTTPMethod:@"POST"];
    [murRequest setHTTPBody:[tSoapMessage dataUsingEncoding:NSUTF8StringEncoding]];

    NSOperationQueue* opResponse = [[NSOperationQueue alloc]init];
    [NSURLConnection sendAsynchronousRequest:murRequest queue:opResponse completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {

        dispatch_async(dispatch_get_main_queue(), ^{
            [self handleResponseData:data];
        });
    }];

}

-(void)handleResponseData:(NSData *)_responseData{

    NSString* tChangeString = [[NSString alloc]initWithData:_responseData encoding:NSUTF8StringEncoding];

    tChangeString = [tChangeString stringByReplacingOccurrencesOfString:@"&lt;" withString:@"<"];
    tChangeString = [tChangeString stringByReplacingOccurrencesOfString:@"&gt;" withString:@">"];
    
    NSLog(@"tChangeString %@",tChangeString);

    NSError *eError;
    SMXMLDocument *smxmlDoc = [SMXMLDocument documentWithData:[tChangeString dataUsingEncoding:NSUTF8StringEncoding]error:&eError]; //modifile

    SMXMLDocument* smxmlRes = [[[[smxmlDoc childNamed:@"Body"]childNamed:@"CurrentOilPriceResponse"]                                                                                          childNamed:@"CurrentOilPriceResult"]childNamed:@"PTT_DS"];

    self.aWebservice = [smxmlRes children];

    for (SMXMLElement* smxmlEle in self.aWebservice) {
        NSString *tProduct = [smxmlEle valueWithPath:@"PRODUCT"];

        NSDate *dToday = [NSDate date];
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
        [dateFormat setDateFormat:@"dd MM yyyy HH:mm:ss"];
        NSString *tDate = [dateFormat stringFromDate:dToday];
//        NSLog(@"Date");
        _lDatePtt.text = tDate;

        if ([tProduct isEqualToString:@"Blue Diesel"] == YES) {
            _lDeselPtt.text = [smxmlEle valueWithPath:@"PRICE"];
            NSString * tDiesel = [smxmlEle valueWithPath:@"PRICE"];
            NSLog(@"diesel %@",tDiesel);

        }
        else if ([tProduct isEqualToString:@"Blue Gasohol E20"] == YES){
            NSString* _Gasohol20 = [smxmlEle valueWithPath:@"PRICE"];
//            NSLog(@"_Gasohol20 %@",_Gasohol20);
            _lE20Ptt.text = [smxmlEle valueWithPath:@"PRICE"];
        }
        else if ([tProduct isEqualToString:@"Blue Gasohol E85"] == YES){
            NSString* _Gasohol85 = [smxmlEle valueWithPath:@"PRICE"];
            NSLog(@"_Gasohol85 %@",_Gasohol85);
            _lE85Ptt.text = [smxmlEle valueWithPath:@"PRICE"];
        }
        else if ([tProduct isEqualToString:@"Blue Gasohol 91"] == YES){
            NSString* _Gasohol91 = [smxmlEle valueWithPath:@"PRICE"];
//            NSLog(@"_Gasohol91 %@",_Gasohol91);
            _lHol91Ptt.text = [smxmlEle valueWithPath:@"PRICE"];
        }
        else if ([tProduct isEqualToString:@"Blue Gasohol 95"] == YES){
            NSString* _Gasohol95 = [smxmlEle valueWithPath:@"PRICE"];
//            NSLog(@"_Gasohol95 %@",_Gasohol95);
            _lHol95Ptt.text = [smxmlEle valueWithPath:@"PRICE"];
        }
        else if ([tProduct isEqualToString:@"Blue Gasoline 95"] == YES){
            NSString* Gasoline = [smxmlEle valueWithPath:@"PRICE"];
//            NSLog(@"Gasoline %@",Gasoline);
            _lLine95Ptt.text = [smxmlEle valueWithPath:@"PRICE"];
        }
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
