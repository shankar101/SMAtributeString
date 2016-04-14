//
//  ViewController.m
//  SMAtributestring
//
//  Created by Shankar on 14/04/16.
//  Copyright © 2016 Shankar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.txtvw4atrubtStrg.attributedText=[ViewController getAboutUsString];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
+(NSMutableAttributedString *)getAboutUsString
{
    NSString *str4Aboutus;
        str4Aboutus=@"Shankar_ios is managed by Shankar Mallick (20 Aug 1990) and its products are underwritten by ABC (ios).\n\nios Mallick Shankar is a result of a strategic joint venture between Shankar Group (""IOS"") - [Formerly known as Shankar Holdings Berhad] and XYZ Company ANB (J) of KPL, one of the leading companies in the U world.\n\nOn 21 February 2006, a Joint Venture (JV) Agreement was signed with XYZ, to form a JV company called ios Mallick Shankar to carry on the SMallick business.\n\nOn 3 March 2006, Bank ABCIndia granted approval for a new SMallick licence for the joint venture of SM and Solidarity. On 2 May 2006, ios Mallick Shankar was incorporated with a paid up capital of RS100 million and licensed on 1 July 2007 as a composite SMallick Operator. Today, ios Mallick Shankar has an agency force of over 10,000.\n\nSM holds 75% equity interest in ios Mallick Shankar while Solidarity holds 25%.";
   
    NSMutableParagraphStyle *paragraphStyles = [[NSMutableParagraphStyle alloc] init];
    paragraphStyles.alignment = NSTextAlignmentJustified;      //justified text
    paragraphStyles.firstLineHeadIndent = 1.0;
    
    NSString *txt4personal=@"ios Mallick Shankar";
    NSString *texSM=@"SM";
    NSString *text=str4Aboutus;
    UIFont *fnt;
   
    fnt=[UIFont fontWithName:@"Titillium-Regular" size:13.0];
    
    NSDictionary *attribs = @{
                              NSForegroundColorAttributeName: [UIColor colorWithRed:43.0/255.0 green:54.0/255.0 blue:74.0/255.0 alpha:1],
                              
                              NSFontAttributeName: fnt,
                              NSParagraphStyleAttributeName: paragraphStyles,
                              };
    NSMutableAttributedString *attributedText =
    [[NSMutableAttributedString alloc] initWithString:text
                                           attributes:attribs];
    UIColor *TxtColor = [UIColor colorWithRed:14.0/255 green:109.0/255 blue:103.0/255 alpha:1.0];
    
    ///
    NSUInteger count = 0, length = [text length];
    NSRange range = NSMakeRange(0, length);
    while(range.location != NSNotFound)
    {
        range = [text rangeOfString: txt4personal options:0 range:range];
        
        if(range.location != NSNotFound)
        {
            
            
            [attributedText setAttributes:@{NSForegroundColorAttributeName:TxtColor}range:range];
           
            [attributedText addAttribute: NSFontAttributeName
                                       value: [UIFont fontWithName:@"Cochin" size:13.0]
                                       range: range ];
            
            range = NSMakeRange(range.location + range.length, length - (range.location + range.length));
            count++;
        }
    }
    
    
    ///
    NSUInteger count1 = 0, length1 = [text length];
    NSRange range1 = NSMakeRange(0, length1);
    while(range1.location != NSNotFound)
    {
        
        range1=[text rangeOfString: texSM options:0 range:range1];
        if(range1.location != NSNotFound)
        {
            
            [attributedText setAttributes:@{NSForegroundColorAttributeName:TxtColor}range:range1];
            
            [attributedText addAttribute: NSFontAttributeName
                                       value: [UIFont fontWithName:@"Titillium-Semibold" size:13.0]
                                       range: range1 ];
            
            range1 = NSMakeRange(range1.location + range1.length, length - (range1.location + range1.length));
            count1++;
        }
    }
    ///
    NSString *str4Shankar_ios=@"Shankar_ios";
    NSRange range4SMallick = [text rangeOfString:str4Shankar_ios];
    
    [attributedText addAttribute: NSForegroundColorAttributeName
                           value: TxtColor
                           range: range4SMallick ];
    
    [attributedText addAttribute: NSFontAttributeName
                               value: [UIFont fontWithName:@"Titillium-Semibold" size:13.0]
                               range: range4SMallick ];
    
    /////
    NSString *str4SMroup=@"Shankar Group (IOS)";
    NSRange range4SMroup = [text rangeOfString:str4SMroup];
    [attributedText addAttribute: NSForegroundColorAttributeName
                           value: TxtColor
                           range: range4SMroup ];
    
    [attributedText addAttribute: NSFontAttributeName
                               value: [UIFont fontWithName:@"Titillium-Semibold" size:13.0]
                               range: range4SMroup ];
    
    ////
    NSString *str4AntahInsurance=@"Shankar Mallick (20 Aug 1990)";
    NSRange range4AntahInsurance = [text rangeOfString:str4AntahInsurance];

    [attributedText addAttribute: NSFontAttributeName
                               value: [UIFont fontWithName:@"Titillium-Semibold" size:13.0]
                               range: range4AntahInsurance ];
    
    ////
    NSString *str4MAA=@"ABC (ios)";
    NSRange range4MAA = [text rangeOfString:str4MAA];
    [attributedText addAttribute: NSForegroundColorAttributeName
                           value: [UIColor colorWithRed:43.0/255.0 green:54.0/255.0 blue:74.0/255.0 alpha:1]
                           range: range4MAA ];
    
    [attributedText addAttribute: NSFontAttributeName
                               value: [UIFont fontWithName:@"Titillium-Semibold" size:13.0]
                               range: range4MAA ];
    
    /////
    NSString *strCapital=[NSString stringWithFormat:@"RS100 %@",@"million"];
    NSRange range4Capital = [text rangeOfString:strCapital];
    
    [attributedText addAttribute: NSFontAttributeName
                               value: [UIFont fontWithName:@"Titillium-Semibold" size:13.0]
                               range: range4Capital ];
    ////
        
    [attributedText addAttribute: NSFontAttributeName
                               value: [UIFont fontWithName:@"Titillium-Semibold" size:13.0]
                               range: [text rangeOfString:@"10,000"] ];
    ////
    [attributedText addAttribute: NSFontAttributeName
                               value: [UIFont fontWithName:@"Titillium-RegularItalic" size:13.0]
                               range: [text rangeOfString:@"[FoRSerly known as Shankar Holdings Berhad]"]];
    
    return attributedText;
}
@end
