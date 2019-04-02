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
        view.backgroundColor=UIColor.white
        let test = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        
 
        test.backgroundColor=UIColor.black9
        test.circleRadius()
        
        view.addSubview(test)
        let test2 = UIDevice()
        
        API.loadDataTest(API)
        
        _ = UILabel(title: "test", frame: CGRect(x: 100, y: 200, width: 100, height: 100), parentView: view)
        
        _ = UIButton(title: "btn title", frame: CGRect(x: 100, y: 300, width: 100, height: 100), parentView: view)
        

    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}

