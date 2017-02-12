//
//  ViewController.swift
//  Composition
//
//  Created by Derrick Ho on 2/12/17.
//  Copyright © 2017 Derrick Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet var customizerObject: CustomizerVCProtocol<UIView, ViewController>! = CustomizerVCProtocol<UIView, ViewController>()

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	
		customizerObject.customize(view: view)
		customizerObject.customize(viewController: self)
		
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let vc = segue.destination as? ViewController2 {
			vc.customizerObject = ViewController2Customizer()
		}
	}
	
}

public class ViewController2Customizer: CustomizerVCProtocol<UIView, ViewController2>
{
	public override func customize(view: UIView) {
		view.backgroundColor = .red
	}
	
	public override func customize(viewController: ViewController2) {
		
	}
}

public class ViewController2: UIViewController {
	
	@IBOutlet var customizerObject: CustomizerVCProtocol<UIView, ViewController2>! = CustomizerVCProtocol<UIView, ViewController2>()
	
	override public func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		customizerObject.customize(view: view)
		customizerObject.customize(viewController: self)
		
	}
	
	override public func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let vc = segue.destination as? ViewController3 {
			vc.customizerObject = ViewController3Customizer()
		}
	}
	
}
