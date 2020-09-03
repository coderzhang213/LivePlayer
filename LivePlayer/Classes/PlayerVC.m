//
//  PlayerVC.m
//  TestSDK
//
//  Created by yuzhang on 2020/9/2.
//  Copyright © 2020 yuzhang. All rights reserved.
//

#import "PlayerVC.h"
#import "SuperPlayer/SuperPlayer.h"

@interface PlayerVC ()<SuperPlayerDelegate>

@property (nonatomic,strong) SuperPlayerView *playerView1;

@property (nonatomic,strong) SuperPlayerModel *player1;

@end

@implementation PlayerVC

- (SuperPlayerView *)playerView1{

    if (!_playerView1) {

        _playerView1 = [[SuperPlayerView alloc] init];
        _playerView1.delegate = self;
    }

    return _playerView1;

}

- (SuperPlayerModel *)player1{

    if (!_player1) {

        _player1 = [[SuperPlayerModel alloc] init];
        _player1.videoURL = @"http://liteavapp.qcloud.com/live/liteavdemoplayerstreamid.flv";

    }

    return _player1;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    
    self.playerView1.fatherView = self.view;
    [self.playerView1 playWithModel:self.player1];
    
//    SuperPlayerWindowShared.superPlayer = self.view;
//    [SuperPlayerWindowShared show];
    

}

- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    
    self.playerView1.frame = CGRectMake(100,
                                        300,
                                        200,
                                        200);
    
}

#pragma mark - SuperPlayerDelegate

- (void)superPlayerBackAction:(SuperPlayerView *)player{
    
    
    NSLog(@"=====");
}




@end
