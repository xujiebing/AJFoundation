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
}
