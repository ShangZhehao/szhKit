//
//  UIColor+Extension.swift
//  Pods-szhKit_Example
//
//  Created by szh on 2019/3/18.
//

import Foundation

extension UIColor {
    
    //常量
    public static let seemuBlue = UIColor(hex: 0x00adf7)
    
    open class var viewBackGroundColor:UIColor {
        get {
            return UIColor(red: 248/255.0, green: 248/255.0, blue: 248/255.0, alpha: 1)
        }
    }
    //加class 属性  不加 对象属性
    open class var black3:UIColor{
        get {
            return UIColor(red: 51/255.0, green: 51/255.0, blue: 51/255.0, alpha: 1)
        }
    }
    
    public class var black6:UIColor{
        return UIColor(red: 102/255.0, green: 102/255.0, blue: 102/255.0, alpha: 1)
    }
    
    public class var black9:UIColor{
        return UIColor(red: 153/255.0, green: 153/255.0, blue: 153/255.0, alpha: 1)
    }
    
    
    
    
    public convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: a
        )
    }
    
    // Create a UIColor from a hex value (E.g 0x000000)
    public convenience init(hex: Int, a: CGFloat = 1.0) {
        self.init(
            red: (hex >> 16) & 0xFF,
            green: (hex >> 8) & 0xFF,
            blue: hex & 0xFF,
            a: a
        )
    }
    
    
    
    
    convenience init(r : CGFloat, g : CGFloat, b : CGFloat){
        self.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1.0);
    }
    //简化RGB颜色写法
   open class func RGBA(_ r : UInt, g : UInt, b : UInt, a : CGFloat) -> UIColor {
        let redFloat = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue = CGFloat(b) / 255.0
        return UIColor(red: redFloat, green: green, blue: blue, alpha: a)
    }
    //随机色
   open class func randomColor() -> UIColor {
        return UIColor(r: CGFloat(arc4random_uniform(256)), g: CGFloat(arc4random_uniform(256)), b: CGFloat(arc4random_uniform(256)));
    }
    //16进制颜色
   open class func colorWithHexString(_ hex: String, alpha : CGFloat = 1.0) -> UIColor {
        var hex = hex
        if hex.hasPrefix("#") {
            hex = hex.substring(from: hex.characters.index(hex.startIndex, offsetBy: 1))
        }

        // Deal with 3 character Hex strings
        if hex.characters.count == 3 {
            let redHex   = hex.substring(to: hex.characters.index(hex.startIndex, offsetBy: 1))
            let greenHex = hex.substring(with: (hex.characters.index(hex.startIndex, offsetBy: 1) ..< hex.characters.index(hex.startIndex, offsetBy: 2)))
            let blueHex  = hex.substring(from: hex.characters.index(hex.startIndex, offsetBy: 2))

            hex = redHex + redHex + greenHex + greenHex + blueHex + blueHex
        }

        let redHex = hex.substring(to: hex.characters.index(hex.startIndex, offsetBy: 2))
        let greenHex = hex.substring(with: (hex.characters.index(hex.startIndex, offsetBy: 2) ..< hex.characters.index(hex.startIndex, offsetBy: 4)))
        let blueHex = hex.substring(with: (hex.characters.index(hex.startIndex, offsetBy: 4) ..< hex.characters.index(hex.startIndex, offsetBy: 6)))

        var redInt:   CUnsignedInt = 0
        var greenInt: CUnsignedInt = 0
        var blueInt:  CUnsignedInt = 0

        Scanner(string: redHex).scanHexInt32(&redInt)
        Scanner(string: greenHex).scanHexInt32(&greenInt)
        Scanner(string: blueHex).scanHexInt32(&blueInt)

        return UIColor(red: CGFloat(redInt) / 255.0, green: CGFloat(greenInt) / 255.0, blue: CGFloat(blueInt) / 255.0, alpha: CGFloat(alpha))
    }
 
    
}
