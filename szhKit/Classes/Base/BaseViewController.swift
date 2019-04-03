//
//  BaseViewController.swift
//  szhKit
//
//  Created by szh on 2019/3/18.
//

import Foundation

open class BaseViewController: UIViewController {
    
  open override func viewDidLoad() {
        view.backgroundColor=UIColor.viewBackGroundColor
    }
    
    open func loadData(_ action:String?,param:Dictionary<String,Any>) {
        
    }
    
    open func loadDataTest(closure:() -> Void) {
        closure()
    }
    
   open func showSuccess(_ msg:String?) {
        
    }
    
  open  func showError(_ msg:String?) {
        
    }
    
  open func showLoading() {
        
    }
    
  open func hideLoading() {
        
  }
  
    
    
    
}
