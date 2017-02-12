//
//  CustomizerVCProtocol.h
//  Composition
//
//  Created by Derrick Ho on 2/12/17.
//  Copyright © 2017 Derrick Ho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CustomizerVCProtocol <
__covariant VIEW: UIView *,
__covariant VIEW_CONTROLLER: UIViewController *
> : NSObject

- (void)customizeViewController:(VIEW_CONTROLLER _Nonnull)viewController
NS_SWIFT_NAME(customize(viewController:));

- (void)customizeView:(VIEW _Nonnull)view
NS_SWIFT_NAME(customize(view:));

@end
