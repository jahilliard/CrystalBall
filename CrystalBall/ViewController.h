//
//  ViewController.h
//  CrystalBall
//
//  Created by Justin Hilliard on 5/16/13.
//  Copyright (c) 2013 Justin Hilliard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) NSArray *predictionArray;
-(void)makePrediction;


@end
