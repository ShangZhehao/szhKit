//
//  UIButton+Extension.swift
//  szhKit
//
//  Created by szh on 2019/3/18.
//

import Foundation

extension UIButton {
    
    public convenience init(title:String,frame:CGRect,font:CGFloat = 15.0,textColor:UIColor = UIColor.black3,selectedColor:UIColor = UIColor.black3,parentView:UIView) {
        self.init(frame: frame)
        self.setTitle(title, for: .normal);
        self.setTitleColor(textColor, for: .normal)
        self.setTitleColor(selectedColor, for: .selected)
        parentView.addSubview(self)
    }
    
    public convenience init(title:String,font:CGFloat = 15.0,textColor:UIColor = UIColor.black3,selectedColor:UIColor = UIColor.black3,parentView:UIView) {
        self.init()
        self.setTitle(title, for: .normal)
        self.setTitleColor(textColor, for: .normal)
        self.setTitleColor(selectedColor, for: .selected)
        parentView.addSubview(self)
    }
    
    
}
