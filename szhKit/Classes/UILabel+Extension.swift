//
//  UILabel+Extension.swift
//  szhKit
//
//  Created by szh on 2019/3/18.
//

import Foundation
import UIKit

extension UILabel {
    
    public convenience init(title:String,frame:CGRect,parentView:UIView) {
        self.init(frame: frame)
        self.text=title;
        self.textColor=UIColor.red
        parentView.addSubview(self)
    }
    
    public convenience init(title:String,font:CGFloat = 15.0,textColor:UIColor = UIColor.black3,parentView:UIView) {
        self.init()
        self.text=title
        self.textColor=textColor
        parentView.addSubview(self)
    }
    
    
}
