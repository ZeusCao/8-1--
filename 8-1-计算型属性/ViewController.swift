//
//  ViewController.swift
//  8-1-计算型属性
//
//  Created by Zeus on 2017/8/1.
//  Copyright © 2017年 Zeus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let p = Person()
        
        // setter 
        p.name = "老王"
        
        // getter
        print(p.name)
        
        // 只读属性
        print(p.title)
        
        // 只读属性的简写
        print(p.title2)
    }

}

