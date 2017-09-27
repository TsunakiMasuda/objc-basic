//
//  CalenderHeaderSection.h
//  CalendarApp
//
//  Created by 増田紘宜 on 2017/09/27.
//  Copyright © 2017年 TsunakiMasuda. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString *const CalenderHeaderIdentifier;

@interface CalenderHeaderSection : UICollectionReusableView
@property (weak, nonatomic) IBOutlet UILabel *customSectionLabel;

@end