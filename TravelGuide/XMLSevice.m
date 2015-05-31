////
////  XMLService.m
////  TravelGuide
////
////  Created by Amporn Sonthi on 5/18/2558 BE.
////  Copyright (c) 2558 Amporn Sonthi. All rights reserved.
////
//
//#import "XMLSevice.h"
//#import "ViewPtt.h"
//
//@implementation XMLSevice
//
//@synthesize tSoapMsg,tURLService,tSoapAct,tSoapLen,tDesel;
//@synthesize smeResponse;
//@synthesize uUrlService;
//@synthesize murRequest;
//@synthesize arrService;
//@synthesize dateFormat;
////@synthesize callXMLService;
//
//-(void)responseXML {
////    [super res]
//    [self callXMLService];
//}
//
//-(void)callXMLService {
//    
//    tSoapMsg = NSLocalizedString(@"WS_SOAP_REQUEST", @"");
//    tURLService = @"http://www.pttplc.com/webservice/pttinfo.asmx"; //วางใน soap
//    tSoapAct = @"http://www.pttplc.com/ptt_webservice/CurrentOilPrice";
//    
//    uUrlService = [NSURL URLWithString:tURLService];
//    murRequest = [NSMutableURLRequest requestWithURL:uUrlService];
//    tSoapLen = [NSString stringWithFormat:@"%d" ,[tSoapMsg length]];
//    
//    [murRequest addValue:@"text/xml; charset-utf-8" forHTTPHeaderField:@"Content-type"];
//    [murRequest addValue:tSoapAct forHTTPHeaderField:@"SOAPACTION"];
//    [murRequest addValue:tSoapLen forHTTPHeaderField:@"Content-Length"];
//    [murRequest setHTTPMethod:@"POST"];
//    [murRequest setHTTPBody:[tSoapMsg dataUsingEncoding:NSUTF8StringEncoding]];
//    
//    NSOperationQueue *oqResponse = [[NSOperationQueue alloc]init];
//    [NSURLConnection sendAsynchronousRequest:murRequest queue:oqResponse completionHandler:^(NSURLResponse
//      *response, NSData *data, NSError *connectionError) {
//        
//        dispatch_async(dispatch_get_main_queue(), ^{
//            [self handleResponseData:data];
//        });
//    }];
//}
//
//-(void)handleResponseData:(NSData *)_responseData {
//    
//    NSString *tSoapReplace = [[NSString alloc]initWithData:_responseData encoding:NSUTF8StringEncoding];
//    tSoapReplace = [tSoapReplace stringByReplacingOccurrencesOfString:@"&lt;" withString:@"<"];
//    tSoapReplace = [tSoapReplace stringByReplacingOccurrencesOfString:@"&gt;" withString:@">"];
//    
//    NSError *eSMXDError;
//    SMXMLDocument *smdModifile = [SMXMLDocument documentWithData:[tSoapReplace dataUsingEncoding:NSUTF8StringEncoding]error:&eSMXDError];
//                                  
//    SMXMLDocument *smdChild = [[[[smdModifile childNamed:@"Body"]childNamed:@"CurrentOilPriceResponse"]childNamed:@"CurrentOilPriceResult"]childNamed:@"PTT_DS"];
//    
//    self.arrService = [smdChild children];
//    
//    for (smeResponse in self.arrService) {
//        
//        NSString *tProduct = [smeResponse valueWithPath:@"PRODUCT"];
//        NSDate *dToday = [NSDate date];
//        dateFormat = [[NSDateFormatter alloc]init];
//        [dateFormat setDateFormat:@"dd MM yyyy HH:mm:ss"];
//        
//        tDate = [dateFormat stringFromDate:dToday];
//        NSLog(@"tDate %@" ,tDate);
//        
//        if ([tProduct isEqualToString:@"Blue Diesel"] == YES) {
//          
//            tDesel = [smeResponse valueWithPath:@"PRICE"];
//            NSLog(@"tDesel %@" ,tDesel);
//        }
//        
//        else if ([tProduct isEqualToString:@"Blue Gasohol E20"] == YES){
//            
//            tSohol20 = [smeResponse valueWithPath:@"PRICE"];
//            NSLog(@"tSohol20 %@" ,tSohol20);
//            
//        }
//        
//        else if ([tProduct isEqualToString:@"Blue Gasohol E85"] == YES){
//            
//            tSohol85 = [smeResponse valueWithPath:@"PRICE"];
//            
//        }
//        
//        else if ([tProduct isEqualToString:@"Blue Gasohol 91"] == YES){
//            
//            tSohol91 = [smeResponse valueWithPath:@"PRICE"];
//            
//        }
//        
//        else if ([tProduct isEqualToString:@"Blue Gasohol 95"] == YES){
//            
//            tSohol95 = [smeResponse valueWithPath:@"PRICE"];
//            
//        }
//        
//        else if ([tProduct isEqualToString:@"Blue Gasoline 95"] == YES){
//            
//            tSoline95 = [smeResponse valueWithPath:@"PRICE"];
//        }
//
//    }
//}
//
//@end
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
