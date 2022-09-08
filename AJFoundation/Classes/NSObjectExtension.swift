//
//  NSObjectExtension.h
//  AJFoundation
//
//  Created by 山鹰 on 2022/8/10.
//

public extension NSObject {
    
    /// 获取class类名
    /// ClassName
    var className:String {
        get {
            var name = self.classNameDescription
            if name.contains(".") {
               name = name.components(separatedBy: ".")[1]
            }
            return name
        }
    }
    
    /// 获取模块名
    /// ModuleName
    var moduleName:String {
        get {
            var name = self.classNameDescription
            if name.contains(".") {
               name = name.components(separatedBy: ".")[0]
            }
            return name
        }
    }
    
    /// 获取class类全名
    /// ModuleName.ClassName
    var classNameDescription:String {
        get {
            let name = type(of: self).description()
            return name
        }
    }
}
