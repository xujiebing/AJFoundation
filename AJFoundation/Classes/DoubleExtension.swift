//
//  DoubleExtension.swift
//  AJFoundation
//
//  Created by 徐结兵 on 2023/1/12.
//

import Foundation

public extension Double {
    
    func roundTo(places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
    
}
