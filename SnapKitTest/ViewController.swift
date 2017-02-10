//
//  ViewController.swift
//  SnapKitTest
//
//  Created by new on 17/2/10.
//  Copyright © 2017年 new All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    //外部方块
    lazy var boxOutter = UIView()
    //内部方块
    lazy var boxInner = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        boxOutter.backgroundColor = UIColor.orange
        self.view.addSubview(boxOutter)
        boxInner.backgroundColor = UIColor.green
        boxOutter.addSubview(boxInner)
        
        boxOutter.snp.makeConstraints { (make) -> Void in
            make.width.height.equalTo(200)
            make.center.equalTo(self.view)
        }
        
        boxInner.snp.makeConstraints { (make) -> Void in
            make.center.equalTo(boxOutter)
            // make width = superview.width - 50, height = superview.height - 50
            make.size.equalTo(boxOutter).offset(-50)
        }
    }


}

