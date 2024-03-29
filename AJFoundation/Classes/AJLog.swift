//
//  AJLog.swift
//  AJFoundation
//
//  Created by 山鹰 on 2022/8/11.
//

import Foundation

/// 日志打印，支持传入不同类型的多个参数
/// - Parameter messages: 内容
/// - Parameter file: 文件名
/// - Parameter function: 方法名
/// - Parameter line: 行号
public func AJLog(_ messages: Any..., file: String = #file, function: String = #function, line: Int = #line) {
    #if DEBUG
    let message = messages.compactMap{ "\($0)" }.joined(separator: " ")
    print("Class: \((file as NSString).lastPathComponent) \nFunc: \(function) \nLine: \(line) \nLog: \(message)\n")
    #endif
}
