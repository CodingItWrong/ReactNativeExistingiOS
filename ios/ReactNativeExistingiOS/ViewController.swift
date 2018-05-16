//
//  ViewController.swift
//  ReactNativeExistingiOS
//
//  Created by Josh Justice on 5/16/18.
//  Copyright © 2018 Josh Justice. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showRNThing(_ sender: Any) {
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
        
        let mockData: [NSObject: AnyObject] = [:];
        
        let rootView = RCTRootView(bundleURL: jsCodeLocation, moduleName: "RNHelloWorld", initialProperties: mockData, launchOptions: nil)
        
        let vc = UIViewController()
        vc.view = rootView
        self.present(vc, animated: true, completion: nil)
    }
    
}

