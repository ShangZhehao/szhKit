//
//  UIDevice+Extension.swift
//  Pods-szhKit_Example
//
//  Created by szh on 2019/3/27.
//

import Foundation

extension UIDevice {
    
    public var screenWidth:CGFloat {
        get {
            return UIScreen.main.bounds.size.width
        }
    }
    
    open class var screenHeight:CGFloat {
        get {
            return UIScreen.main.bounds.size.height
        }
    }
    
    
}
