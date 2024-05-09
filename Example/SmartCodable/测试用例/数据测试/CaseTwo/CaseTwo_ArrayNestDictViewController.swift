//
//  CaseTwo_ArrayNestDictViewController.swift
//  SmartCodable_Example
//
//  Created by qixin on 2024/3/1.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit
import SmartCodable

class CaseTwo_ArrayNestDictViewController: BaseCompatibilityViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let arr = [
            [
                "name": "小明",
                "age": 10,
                "father": [
                    "name": "小明的爸爸",
                    "age": "不详",
                    "love": NSNull()
                ],
                "love": [
                    "name": NSNull(),
                    "time": 4
                ],
                "son": nil
            ],
            [
                "name": "大黄",
                "age": 20,
                "father": [
                    "name": "大黄的爸爸",
                    "age": "40",
                    "love": [
                        "name": "打牌",
                        "time": 20
                    ]
                ],
                "love": [
                    "name": NSNull(),
                    "time": 4
                ],
                "son": nil
            ]
        
        ]

        
        if let models = [PersonModel].deserialize(from: arr) {
            print(models)
        }
    }

}
extension CaseTwo_ArrayNestDictViewController {
    struct PersonModel: SmartCodable {
        var name: String = ""
        var age: Int = 0
        var father: FatherModel = FatherModel()
        var love: Love?
        var son: SonModel?
    }
    
    struct FatherModel: SmartCodable {
        var name: String?
        var age: Int?
        var love: Love?
    }

    struct SonModel: SmartCodable {
        var name: String?
        var age: Int?
        var love: Love?
    }

    struct Love: SmartCodable {
        var name: String = ""
        var time: CGFloat = 0.0
    }
}
