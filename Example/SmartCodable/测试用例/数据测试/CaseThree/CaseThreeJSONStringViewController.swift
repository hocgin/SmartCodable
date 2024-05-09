//
//  CaseThreeJSONStringViewController.swift
//  SmartCodable_Example
//
//  Created by qixin on 2024/3/4.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import Foundation
import SmartCodable

class CaseThreeJSONStringViewController: BaseCompatibilityViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// 浮点数的异常数据（Nan & inf）处理，不再提供demo。
        /// 底层将这两个值当成了字符串处理，遇到了就提供默认值。

        
        let dict: [String: Any] = [
//            "name": "Mccc",
//            "age": 10,
            "love": "{\"name\":\"sleep\"}"
        ]

        
        
        if let model = JSONStringModel.deserialize(from: dict) {
            print(model)
        }
    }
    
    struct JSONStringModel: SmartCodable {
//        var name: String?
//        var age: Int?
        var love: Love = Love()
    }
    
    struct Love: SmartCodable {
        var name: String = ""
    }
}
