//
//  CaseTwo_ArrayNestArrayViewController.swift
//  SmartCodable_Example
//
//  Created by qixin on 2024/3/1.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit
import SmartCodable

class CaseTwo_ArrayNestArrayViewController: BaseCompatibilityViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        let arr: [Any] = [
            [
            ],
            NSNull(),
            [
                "loves": [
                    [
                        "name": "love 1",
                        "time": "4",
                    ],
                    [
                        "name": NSNull(),
                        "time": "足球"
                    ]
                ]
            ]
        ]
        
        
        if let models = [PersonModel].deserialize(from: arr) {
            print(models)
        }
    }

}
extension CaseTwo_ArrayNestArrayViewController {
    struct PersonModel: SmartCodable {
        var loves: [Love]?
        var sons: [SonModel]?
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
