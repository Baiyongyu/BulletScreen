//
//  ViewController.m
//  BulletScreen
//
//  Created by 宇玄丶 on 2016/12/5.
//  Copyright © 2016年 宇玄丶. All rights reserved.
//

#import "ViewController.h"
#import "FlyTextView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *nameArray = @[@"卧槽",@"厉害了，我的哥",@"妈的智障",@"前方高能",@"太牛逼了",@"卧了个槽",@"6666666666",@"666666666666666666666",@"哥也是醉了",@"真是没sei了"];
    NSArray *colorArray = @[[UIColor redColor], [UIColor blackColor], [UIColor greenColor], [UIColor orangeColor], [UIColor yellowColor], [UIColor purpleColor], [UIColor magentaColor], [UIColor brownColor]];
    for(int i = 0 ; i < 1000; i++) {
        float   tempNum     = arc4random()%550;
        int     tempI       = arc4random()%10;
        int     sleepTime   = arc4random()%5;
        int     colorNum    = arc4random()%8;
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            sleep(sleepTime);
            dispatch_async(dispatch_get_main_queue(), ^{
                FlyTextView * flyView = [[FlyTextView alloc] initWithY:tempNum AndText:nameArray[tempI] AndWordSize:18];
                flyView.textColor = colorArray[colorNum];
                [self.view addSubview:flyView];
            });
        });
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
