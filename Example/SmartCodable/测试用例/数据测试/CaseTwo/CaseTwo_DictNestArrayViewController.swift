//
//  CaseTwo_DictNestArrayViewController.swift
//  SmartCodable_Example
//
//  Created by qixin on 2024/3/1.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit
import SmartCodable

class CaseTwo_DictNestArrayViewController: BaseCompatibilityViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        let dict: [String: Any] = [
            "name": "father",
            "age": 30,
            "loves": [
                [
                    "name": "basketball",
                    "time": 10
                ],
                [
                    "name": "football",
                    "time": 10
                ]
            ],
            "sons": [
                [
                    "name": "son1",
                    "age": 4,
                    "love": [
                        "name": "sleep",
                        "time": 4
                    ],
                ],
                [
                    "name": "son2",
                    "age": 4,
                    "love": [
                        "name": "look Books",
                        "time": 2
                    ],
                ]
            ]
        ]

       
        if let model = FatherModel.deserialize(from: dict) {
            print(model)
        }
    }

}
extension CaseTwo_DictNestArrayViewController {
    struct FatherModel: SmartCodable {
        var name: String = ""
        var age: Int = 0
        var loves: [Love] = []
        var sons: [SonModel] = []
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
