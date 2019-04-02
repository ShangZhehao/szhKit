//
//  TestTabbarController.swift
//  szhKit_Example
//
//  Created by szh on 2019/3/18.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import szhKit


class TestTabbarController: BaseTabBarController {
    
    override func viewDidLoad() {
        
//   直接覆盖原有attrs norAttrs=[NSAttributedString.Key.foregroundColor:UIColor.blue,NSAttributedString.Key.font:UIFont.systemFont(ofSize: 12)];
        addItems(classArr: ["ViewController","UITestViewController"], title: ["home","UI"], image: ["home-unselected","ui-unselected"], selectedImg: ["home-selected","ui-selected"])
        
    }
    
}
