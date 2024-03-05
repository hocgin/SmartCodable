// 
//  _CleanJSONDecoder.swift
//  CleanJSON
//
//  Created by Pircate(swifter.dev@gmail.com) on 2018/10/10
//  Copyright © 2018 Pircate. All rights reserved.
//

import Foundation

final class _CleanJSONDecoder: Decoder {
    
    /// The decoder's storage.
    var storage: CleanJSONDecodingStorage
    
    var defalutStorage: DefaultValueStorage
    
    /// Options set on the top-level decoder.
    let options: SmartJSONDecoder.Options
    
    /// The path to the current point in encoding.
    public var codingPath: [CodingKey]
    
    /// Contextual user-provided information for use during encoding.
    public var userInfo: [CodingUserInfoKey : Any] {
        return self.options.userInfo
    }
    
    // MARK: - Initialization
    
    /// Initializes `self` with the given top-level container and options.
    init(referencing container: Any, at codingPath: [CodingKey] = [], options: SmartJSONDecoder.Options) {
        self.storage = CleanJSONDecodingStorage()
        self.storage.push(container: container)
        self.codingPath = codingPath
        self.options = options
        self.defalutStorage = DefaultValueStorage()
    }
    
    // MARK: - Decoder Methods
    
    public func container<Key>(keyedBy type: Key.Type) throws -> KeyedDecodingContainer<Key> {
        
        
        
        guard !(self.storage.topContainer is NSNull) else {
            // ⚠️： 日志输出，进行了兼容了
//            throw DecodingError.Nested.valueNotFound(
//                KeyedDecodingContainer<Key>.self,
//                codingPath: codingPath,
//                debugDescription: "Cannot get keyed decoding container -- found null value instead."
//            )
            
            
            let container = CleanJSONKeyedDecodingContainer<Key>(
                referencing: self,
                wrapping: [:]
            )
            return KeyedDecodingContainer(container)

        }
        
        guard let topContainer = self.storage.topContainer as? [String : Any] else {
            // ⚠️： 日志输出，进行了兼容了
//            throw DecodingError._typeMismatch(
//                at: codingPath,
//                expectation: [String : Any].self,
//                reality: storage.topContainer
//            )
            
            let container = CleanJSONKeyedDecodingContainer<Key>(
                referencing: self,
                wrapping: [:]
            )
            return KeyedDecodingContainer(container)
        }
        
        let container = CleanJSONKeyedDecodingContainer<Key>(
            referencing: self,
            wrapping: topContainer
        )
        return KeyedDecodingContainer(container)
    }
    
    public func unkeyedContainer() throws -> UnkeyedDecodingContainer {
        
        guard !(self.storage.topContainer is NSNull) else {
            // ⚠️： 日志输出，进行了兼容了
//            throw DecodingError.Nested.valueNotFound(
//                UnkeyedDecodingContainer.self,
//                codingPath: codingPath,
//                debugDescription: "Cannot get unkeyed decoding container -- found null value instead."
//            )
            return CleanJSONUnkeyedDecodingContainer(referencing: self, wrapping: [])
        }
        
        guard let topContainer = self.storage.topContainer as? [Any] else {
            // ⚠️： 日志输出，进行了兼容了
//            throw DecodingError._typeMismatch(
//                at: codingPath,
//                expectation: [Any].self,
//                reality: storage.topContainer
//            )
            return CleanJSONUnkeyedDecodingContainer(referencing: self, wrapping: [])
        }
        
        return CleanJSONUnkeyedDecodingContainer(referencing: self, wrapping: topContainer)
    }
    
    public func singleValueContainer() throws -> SingleValueDecodingContainer {
        return self
    }
}
