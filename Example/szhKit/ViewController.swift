//
//  ViewController.swift
//  szhKit
//
//  Created by ShangZhehao on 03/13/2019.
//  Copyright (c) 2019 ShangZhehao. All rights reserved.
//

import UIKit
import szhKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let test = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        
        test.cornerRadius=5
        test.backgroundColor=UIColor.red
        view.addSubview(test)

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

