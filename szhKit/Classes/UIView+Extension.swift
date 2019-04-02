//
//  UIViweExtension.swift
//  Pods-szhKit_Example
//
//  Created by szh on 2019/3/12.
//

extension UIView {
    
    public var screenWidth:CGFloat {
        get {
            return UIScreen.main.bounds.size.width
        }
    }
    
    public var height:CGFloat {
        get {
            return self.bounds.size.width
        }
        set(newHeight) {
            var frame = self.frame
            frame.size.height=newHeight
            self.frame=frame
        }
    }
    
    public var width:CGFloat {
        get {
            return self.frame.size.width
        }
        
        set(newWidth) {
            var frame = self.frame
            frame.size.width = newWidth
            self.frame = frame
        }
    }
    
    public var x:CGFloat {
        get {
            return self.bounds.origin.x
        }
    }
    
    public var y:CGFloat {
        get {
            return self.bounds.origin.y
        }
    }
    
    public var cornerRadius:CGFloat {
        get {
            return self.layer.cornerRadius;
        }
        set(newRadius) {
            self.layer.cornerRadius = newRadius
            self.layer.masksToBounds=true
        }
    }
    
    public var borderWidth:CGFloat {
        get {
            return self.layer.borderWidth;
        }
        set(newBorderWidth) {
            self.layer.borderWidth = newBorderWidth
        }
    }
    
    public var borderColor:CGColor {
        get {
            return self.layer.borderColor!
        }
        set(newColor) {
            self.layer.borderColor=newColor
        }
    }
    
   public func circleRadius() {
        self.cornerRadius=self.height/2;
    }
    
}
