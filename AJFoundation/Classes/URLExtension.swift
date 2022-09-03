//
//  URLExtension.swift
//  AJFoundation
//
//  Created by 山鹰 on 2022/9/1.
//

import Foundation
import UIKit

public extension URL {
    
    static var settingsUrl: URL {
        return URL.init(string: UIApplication.openSettingsURLString + Bundle.main.bundleIdentifier!)!
    }
    
    static var bluetoothUrl: URL {
        return URL.init(string: "App-prefs:root=Bluetooth")!
    }
    
    static var wifiUrl: URL {
        return URL.init(string: "App-prefs:root=WIFI")!
    }
}
