//
//  ViewController3.m
//  Composition
//
//  Created by Derrick Ho on 2/12/17.
//  Copyright © 2017 Derrick Ho. All rights reserved.
//

#import "ViewController3.h"
#import "Composition-Swift.h"

@class ViewController2Customizer;

@interface ViewController4Customizer : CustomizerVCProtocol <UIView *, ViewController3 *>

@end

@implementation ViewController3

- (void)viewDidLoad {
	[super viewDidLoad];
	
	[_customizerObject customizeView:self.view];
	[_customizerObject customizeViewController:self];
	
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	if ([segue.destinationViewController isKindOfClass:[ViewController class]]) {
		ViewController *vc = (id)segue.destinationViewController;
		vc.customizerObject = (id)[ViewController4Customizer new];
	}
}

@end

@implementation ViewController3Customizer

- (void)customizeView:(UIView *)view {
	[view setBackgroundColor:[UIColor greenColor]];
}

- (void)customizeViewController:(UIViewController *)viewController {
	
}

@end



@implementation ViewController4Customizer

- (void)customizeView:(UIView *)view {
	[view setBackgroundColor:[UIColor blueColor]];

}

@end
