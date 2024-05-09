//
//  CaseThree_FloatViewController.swift
//  SmartCodable_Example
//
//  Created by qixin on 2024/3/1.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit
import SmartCodable

class CaseThree_FloatViewController: BaseCompatibilityViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// 浮点数的异常数据（Nan & inf）处理，不再提供demo。
        /// 底层将这两个值当成了字符串处理，遇到了就提供默认值。

        
        let dict: [String: Any] = [
            "a": "0",
            "b": "Mccc",
            "c": [],
            "d": NSNull(),
            "inf": "inf",
            "nan": "NaN",
            "inf1": "inf",
            "nan1": "NaN",
        ]
  

        
        if let model = FloatModel.deserialize(from: dict) {
            print(model)
            print(model.nan1)
        }
        
    }
    
    struct FloatModel: SmartCodable {
        var a: Double?
        var b: Double?
        var c: Double?
        var d: Double?
        var inf: Float?
        var nan: Float?
        var inf1: CGFloat = 0
        var nan1: CGFloat = 0
    }
}
