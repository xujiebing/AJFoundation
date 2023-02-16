//
//  AJError.swift
//  AJFoundation
//
//  Created by 徐结兵 on 2023/2/16.
//

import Foundation

public struct AJError: LocalizedError {
    
    var errorMsg = ""
    public var errorDescription: String? {
        return errorMsg
    }
    
    init(_ errorMsg: String) {
        self.errorMsg = errorMsg
    }
    
}
