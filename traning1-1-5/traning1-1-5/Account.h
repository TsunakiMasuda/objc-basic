//
//  Account.h
//  traning1-1-5
//
//  Created by MAC管理者 STV on 2017/08/20.
//  Copyright © 2017年 MAC管理者 STV. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FavoriteProgrammingLanguage.h"
/*！！！ デリゲートされる側、処理をお願いされる側、通知を受けて処理をする側 ！！！*/

@interface Account : NSObject <FavoriteProgrammingLanguageDelegate>
// 普通のメソッド（mainから呼ぶやつ）
- (void)activateJoinInternship;
@end
