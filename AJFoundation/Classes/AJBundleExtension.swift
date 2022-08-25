//
//  AJBundleExtension.swift
//  AJFoundation
//
//  Created by 山鹰 on 2022/8/11.
//

import Foundation

public extension Bundle {
    
    class func ajGetJsonStringWithPath(path:String) throws -> String? {
        let result = try String.init(contentsOfFile: path, encoding: String.Encoding.utf8)
        return result
    }
    
    func ajGetJsonString(resource: String, type: String) throws -> String? {
        guard let path = self.path(forResource: resource, ofType: type) else {
            return nil
        }
        let result = try String.init(contentsOfFile: path, encoding: String.Encoding.utf8)
        return result
    }
}
