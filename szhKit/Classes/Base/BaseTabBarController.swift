//
//  BaseTabBarController.swift
//  szhKit
//
//  Created by szh on 2019/3/18.
//

import Foundation
import UIKit

 open class BaseTabBarController: UITabBarController,UITabBarControllerDelegate {
    
   open var norAttrs = [NSAttributedString.Key.foregroundColor:UIColor.gray,NSAttributedString.Key.font:UIFont.systemFont(ofSize: 12)];
    
   open var selectedAttrs = [NSAttributedString.Key.foregroundColor:UIColor.red,NSAttributedString.Key.font:UIFont.systemFont(ofSize: 12)];
    
    open func addItems(classArr:Array<String>!,title:Array<String>!,image:Array<String>!,selectedImg:Array<String>!) {
    
    // 1.动态获取命名空间
    guard let nameSpace = Bundle.main.infoDictionary!["CFBundleExecutable"]as? String else{
        return;
    }
    
        for i in 0..<classArr.count {
            guard let className = NSClassFromString(nameSpace + "." + classArr[i] )as? UIViewController.Type else{
                return
            }
            addChildVc(className.init(), title: title[i], image: image[i], selectedImage: selectedImg[i])
        }
    }

    func addChildVc(_ childVc: UIViewController?, title: String?, image: String?, selectedImage: String?) {
        
        childVc?.tabBarItem.setTitleTextAttributes(norAttrs, for: .normal)
        childVc?.tabBarItem.setTitleTextAttributes(selectedAttrs, for: .selected)
        childVc?.tabBarItem.title = title
        childVc?.tabBarItem.image = (UIImage(named: image ?? ""))?.withRenderingMode(.alwaysOriginal)
        childVc?.tabBarItem.selectedImage = (UIImage(named: selectedImage ?? ""))?.withRenderingMode(.alwaysOriginal)
        
        //    BaseNavigationController *mainNav = [[BaseNavigationController alloc] initWithNavigationBarClass:[FWNavigationBar class] toolbarClass:nil];
        //    [mainNav setViewControllers:@[childVc] animated:YES];
        
        //    BaseNavigationController *mainNav = [[BaseNavigationController alloc] initWithRootViewController:childVc];
        
        //    [self addChildViewController:mainNav];
        let mainNav = BaseNavigationController()
        mainNav.viewControllers = [childVc] as! [UIViewController]
        addChild(mainNav)
        
        
    }
    
    
    public func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        
    }
    
    public func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        
        return true
    }
    
}
