//
//  Test2ViewController.swift
//  SmartCodable_Example
//
//  Created by qixin on 2024/4/10.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import Foundation
import SmartCodable
import HandyJSON



class Test2ViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        testDeserializeNestedStructure()
        
    }
    
    func testDeserializeArrayPath() {
        let jsonString = """
            {
                "people": [
                    {
                        "name": "John Doe",
                        "age": 30
                    },
                    {
                        "name": "Jane Smith",
                        "age": 25
                    }
                ]
            }
            """
        
        if let models = [PathModel].deserialize(from: jsonString, designatedPath: "people") {
          print(models)
        }
    }
    
    func testDeserializeNestedArrayPath() {
        let jsonString = """
            {
                "person": {
                    "name": "John Doe",
                    "friends": [
                        {
                            "name": "Alice",
                            "age": 25
                        },
                        {
                            "name": "Bob",
                            "age": 28
                        }
                    ]
                }
            }
            """
        
        if let model = NestedArrayModel.deserialize(from: jsonString, designatedPath: "person") {
            print(model)
        }
    }
    
    func testDeserializeInvalidPath() {
        let jsonString = """
            {
                "person": {
                    "name": "John Doe",
                    "age": 30
                }
            }
            """
        
        if let model = PathModel.deserialize(from: jsonString, designatedPath: "invalid.path") {
            print(model)
        }
    }
    
    func testDeserializeEmptyPath() {
        let jsonString = """
            {
                "name": "John Doe",
                "age": 30
            }
            """
        
        if let model = PathModel.deserialize(from: jsonString, designatedPath: "") {
            print(model)
        }
    }
    
    func testDeserializeArrayWithPath() {
        let jsonString = """
            {
                "data": {
                    "names": ["Alice", "Bob", "Charlie"]
                }
            }
            """
        
        if let models = [PathArrayModel].deserialize(from: jsonString, designatedPath: "data.names") {
            print(models)
        }
    }
    
    func testDeserializeNestedStructure() {
        let jsonString = """
            {
              "code": 200,
              "message": "Success",
              "data": {
                "school": {
                  "name": "ABC University",
                  "departments": [
                    {
                      "name": "Computer Science",
                      "courses": [
                        {
                          "code": "CS101",
                          "title": "Introduction to Computer Science"
                        },
                        {
                          "code": "CS201",
                          "title": "Data Structures and Algorithms"
                        }
                      ]
                    },
                    {
                      "name": "Mathematics",
                      "courses": [
                        {
                          "code": "MATH101",
                          "title": "Calculus I"
                        },
                        {
                          "code": "MATH201",
                          "title": "Linear Algebra"
                        }
                      ]
                    }
                  ]
                }
              }
            }
            """
        
        if let school = School.deserialize(from: jsonString, designatedPath: "data.school") {
            print(school)
        }
        guard let departments = [Department].deserialize(from: jsonString, designatedPath: "data.school.departments") else {
            return
        }
        print(departments)
        
    }
}


extension Test2ViewController {
    struct PathModel: SmartCodable {
        var name: String?
        var age: Int?
    }
    
    struct NestedArrayModel: SmartCodable {
        var name: String?
        var friends: [Friend]?
        
        struct Friend: SmartCodable {
            var name: String = ""
            var age: Int = 0
        }
    }
    
    struct PathArrayModel: SmartCodable {
        var name: [String]?
    }
    
    struct Course: SmartCodable {
        var code: String?
        var title: String?
    }
    
    struct Department: SmartCodable {
        var name: String?
        var courses: [Course]?
    }
    
    struct School: SmartCodable {
        var name: String?
        var departments: [Department]?
    }
}
