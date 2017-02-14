//
//  ViewController3.h
//  Composition
//
//  Created by Derrick Ho on 2/12/17.
//  Copyright © 2017 Derrick Ho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CustomizerVCProtocol.h"


@interface ViewController3 : UIViewController

@property (strong, nonatomic) CustomizerVCProtocol <UIView *, ViewController3 *>* customizerObject;

@end

@interface ViewController3Customizer : CustomizerVCProtocol <UIView *, ViewController3 *>

@end
