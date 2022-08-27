//
//  NSLocaleExtension.swift
//  AJFoundation
//
//  Created by 山鹰 on 2022/8/25.
//

import Foundation

public extension NSLocale {
    class var isChineseLocale: Bool {
        let localeIdentifier = NSLocale.current.identifier
        return localeIdentifier == "CN"
    }
}
