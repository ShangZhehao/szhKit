//
//  UITestViewController.swift
//  szhKit_Example
//
//  Created by szh on 2019/3/27.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import szhKit

class UITestViewController: BaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        dataArr.addObjects(from: ["1","2","3"]);
        cellID = "testcell"
        cellHeight=100
        tabel.register(UITableViewCell.self, forCellReuseIdentifier:cellID)
        tabel.delegate=self
        tabel.dataSource=self
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    

}
