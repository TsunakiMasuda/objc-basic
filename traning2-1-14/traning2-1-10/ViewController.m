//
//  ViewController.m
//  traning2-1-10
//
//  Created by MAC管理者 STV on 2017/09/09.
//  Copyright © 2017年 MAC管理者 STV. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *mainTableView;
@property (strong, nonatomic) NSArray *cardImagesNameArray;
@property (strong, nonatomic) NSArray *cardTextsArray;

@end

static const NSUInteger NumberOfSection = 1;
static NSString *const CellIdentifier = @"tableCell";
static const CGFloat MainSellEstimatedRowHeight = 70;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mainTableView.estimatedRowHeight = MainSellEstimatedRowHeight;
    self.mainTableView.rowHeight = UITableViewAutomaticDimension;
    
    [self.mainTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellIdentifier];
    
    //プロジェクト内のファイルにアクセスできるオブジェクトを宣言
    NSBundle *bundle = [NSBundle mainBundle];
    //読み込むプロパティリストのファイルパスを指定
    NSString *path = [bundle pathForResource:@"PropertyList" ofType:@"plist"];
    //プロパティリストの中身データを取得
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:path];
    // キー値を元に各自データリストを取得
    self.cardImagesNameArray = [dic objectForKey:@"CardImage"];
    self.cardTextsArray = [dic objectForKey:@"CardText"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Table Viewのセクション数を指定
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // 今回はセクション１個。定数で設定。
    return NumberOfSection;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return MIN(self.cardImagesNameArray.count, self.cardTextsArray.count);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.textLabel.numberOfLines = 0;
    cell.textLabel.text = self.cardTextsArray[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:self.cardImagesNameArray[indexPath.row]];

    return cell;
}

/* 参考にしたサイト
 iOS6でセルの再利用方法が変わりました
 http://obc-fight.blogspot.jp/2013/07/uitableview-uitableview1.html
*/


@end
