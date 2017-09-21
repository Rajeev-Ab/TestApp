//
//  ViewController.swift
//  TestApp
//
//  Created by Rajeev on 20/09/17.
//  Copyright © 2017 Wildnet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ServiceAgent.callServiceWith(url: "http://www.recipepuppy.com/about/api/", method: .get , parameter: ["i":"onion","q":"","p":1], encoding:nil, header: [:])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

