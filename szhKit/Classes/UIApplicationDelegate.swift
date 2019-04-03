//
//  UIApplicationDelegate.swift
//  szhKit
//
//  Created by szh on 2019/3/18.
//

import Foundation

extension UIApplicationDelegate {
    
    public func isIphoneX() -> Bool {
    
        var iPhoneXSeries = false
        if UIDevice.current.userInterfaceIdiom != .phone {
//            return iPhoneXSeries
            ConstantUtil.DEFAULTHEADErHEIGHT=64.0
            ConstantUtil.DEFAULTFOOTERHEIGHT=0.0
            return iPhoneXSeries
        }
        
        if #available(iOS 11.0, *) {
            let mainWindow: UIWindow? = UIApplication.shared.delegate?.window as? UIWindow
            if (mainWindow?.safeAreaInsets.bottom ?? 0.0) > 0.0 {
                iPhoneXSeries = true
                ConstantUtil.DEFAULTHEADErHEIGHT=88.0
                ConstantUtil.DEFAULTFOOTERHEIGHT=(-44.0)
            }
        }
        
        
        return iPhoneXSeries
        
    }
    
}
