//
//  AJNSObjectExtension.h
//  AJFoundation
//
//  Created by 山鹰 on 2022/8/10.
//

public extension NSObject {
    
    /// 获取class类名
    var ajClassName:String {
        get {
            var name = type(of: self).description()
            if name.contains(".") {
               name = name.components(separatedBy: ".")[1]
            }
            return name
        }
    }
}
