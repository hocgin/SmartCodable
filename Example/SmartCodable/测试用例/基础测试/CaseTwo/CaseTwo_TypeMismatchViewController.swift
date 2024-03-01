//
//  CaseTwo_TypeMismatchViewController.swift
//  SmartCodable_Example
//
//  Created by qixin on 2024/3/1.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

class CaseTwo_TypeMismatchViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        guard let dict = typeMissmatchJson.toDictionary() else { return }
        
        
        let typeMismatchArr: [Any] = [dict]
        
//        if let models = [CompatibleTypes].deserialize(array: typeMismatchArr) as? [CompatibleTypes] {
//            print(models)
//        }
        
        if let models = [OptionalCompatibleTypes].deserialize(array: typeMismatchArr) as? [OptionalCompatibleTypes] {
            print(models)
        }
    }
}


