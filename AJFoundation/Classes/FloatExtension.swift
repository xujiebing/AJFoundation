//
//  FloatExtension.swift
//  AJFoundation
//
//  Created by 山鹰 on 2022/9/1.
//

import Foundation
import UIKit

public extension Float {
    
    func roundTo(places: Int) -> Float {
        let divisor = pow(10.0, Float(places))
        return (self * divisor).rounded() / divisor
    }
    
}
