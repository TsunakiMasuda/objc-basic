//
//  ViewController.h
//  traning2-3-2
//
//  Created by 増田紘宜 on 2017/09/15.
//  Copyright © 2017年 TsunakiMasuda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (id)connectDataBase:(NSString *)dbName;
extern NSString *const ToDoDatabaseName;
extern NSString *const ToDoDatabaseTableName;

@end
