//
//  Person.swift
//  8-1-计算型属性
//
//  Created by Zeus on 2017/8/1.
//  Copyright © 2017年 Zeus. All rights reserved.
//

import UIKit

class Person: NSObject {

    // getter和setter（仅作为演示，日常开发不用）
    private var _name: String?
    
    // swift中一般不会重写getter和setter方法
    var name: String? {
        get{
            // 返回_成员变量
            return _name
        }
        set{
            // 使用_成员变量记录值
            _name = newValue
        }
    }
    
    
    // oc中定义属性的时候有readonly：重写getter方法
    
    // 只重写getter方法，不重写setter方法 就是只读属性
    var title: String{
        get{
            return "Mr. " + (name ?? "")
        }
    }
    
    // 只读属性的简写--- 直接return
    // 只读属性又称为计算型属性 ：本身不保存内容，都是通过计算得到
    // 类似于一个“函数” ：没有参数但一定有返回值
    var title2: String{
        return "Mr XXX." + (name ?? "")
    }
    
    
    // 懒加载的title，本质是一个闭包
    /** 懒加载和计算型属性的区别
        1. 懒加载会在第一次访问的时候执行，闭包执行结束后，会把结果保存在title3中，后续调用直接返回title3的内容
        2. 懒加载的属性会分配存储空间
     */
    lazy var title3: String = {
        return "Lazy" + (self.name ?? "")
    }()
    
    
    
}
