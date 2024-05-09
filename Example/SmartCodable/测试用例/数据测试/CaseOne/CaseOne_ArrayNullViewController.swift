//
//  CaseOne_ArrayNullViewController.swift
//  SmartCodable_Example
//
//  Created by qixin on 2024/3/1.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

class CaseOne_ArrayNullViewController: BaseCompatibilityViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        guard let dict = nullJson.toDictionary() else { return }
        
        
        let nullArr: [Any] = [dict]
        
        if let models = [CompatibleTypes].deserialize(from: nullArr) {
            print(models)
        }
        
        if let models = [OptionalCompatibleTypes].deserialize(from: nullArr) {
            print(models)
        }
    }

}
