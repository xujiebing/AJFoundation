//
//  DateExtension.swift
//  AJFoundation
//
//  Created by 山鹰 on 2022/8/11.
//

import Foundation

public extension Date {
    
    /// 获取当前 秒级 时间戳 - 10位
    var timeStampSec: Int {
        let timeInterval: TimeInterval = self.timeIntervalSince1970
        let timeStamp = Int(timeInterval)
        return timeStamp
    }

    /// 获取当前 毫秒级 时间戳 - 13位
    var timeStampMSec: Int {
        let timeInterval: TimeInterval = self.timeIntervalSince1970
        let millisecond = Int(timeInterval*1000)
        return millisecond
    }

}
