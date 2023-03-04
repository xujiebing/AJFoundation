//
//  DictionaryExtension.swift
//  AJFoundation
//
//  Created by 徐结兵 on 2023/3/4.
//

import Foundation

public extension Dictionary {
    
    var json: String {
        var string = ""
        var data: Data?
        do {
            data = try JSONSerialization.data(withJSONObject: self, options: .prettyPrinted)
        } catch  {
            return string
        }
        string = String.init(data: data!, encoding: String.Encoding.utf8)!
        return string
    }
    
}
