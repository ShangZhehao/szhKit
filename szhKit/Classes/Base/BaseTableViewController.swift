//
//  BaseTableViewController.swift
//  Pods-szhKit_Example
//
//  Created by szh on 2019/3/28.
//

import UIKit
import SnapKit

open class BaseTableViewController: BaseViewController,UITableViewDataSource,UITableViewDelegate {
    
   public let tabel = UITableView()
   open var cellID:String!
//   open var cellClass:UITableViewCell!
   open var dataArr = NSMutableArray()
   open var cellHeight:CGFloat = 44.0

  open override  func viewDidLoad() {
        super.viewDidLoad()
    
        view.addSubview(tabel)
        tabel.tableFooterView=UIView(frame: CGRect.zero)
        tabel.snp.makeConstraints { (make) in
            make.top.left.bottom.right.equalTo(view)
        }
    
    }


    open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        return cell!
    }
    
    open func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHeight
    }
    

}



