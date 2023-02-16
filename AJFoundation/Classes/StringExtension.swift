//
//  StringExtension.swift
//  AJFoundation
//
//  Created by 山鹰 on 2022/8/11.
//

import Foundation

public extension String {
    
    /// 通过safari打开链接
    ///
    /// - Returns: 是否可以打开链接
    func ajOpenInSafari() -> Bool {
        if self.isEmpty {
            return false
        }
        guard let url = URL.init(string: self) else {
            return false
        }
        guard !UIApplication.shared.canOpenURL(url) else {
            AJLog("打开系统自带浏览器时, URL格式传的不对, URL是:\(self)")
            return false;
        }
        return UIApplication.shared.openURL(url);
    }
    
    /// 根据类名和模块名获取AnyClass
    ///
    /// - Returns: AnyClass?
    func ajClassObject(_ projectName: String?) -> AnyClass? {
        var nameSpace = projectName
        if nameSpace == nil {
            nameSpace = Bundle.main.infoDictionary!["CFBundleExecutable"] as! String
        }
        let classObj:AnyClass? = NSClassFromString(projectName! + "." + self)
        return classObj
    }
    
    func ajBundle() -> Bundle? {
        guard let path = Bundle.main.path(forResource: self, ofType: "bundle") else {
            return nil;
        }
        let bundle = Bundle.init(path: path)
        return bundle;
    }
    
    var ajLanguage: String {
        return NSLocalizedString(self, comment: "")
    }
    
    var ajInfoPlistLanguage: String {
        return NSLocalizedString(self, tableName: "InfoPlist", comment: "")
    }
    
    static func language(key: String, tableName: String) -> String {
        return NSLocalizedString(key, tableName: tableName, comment: "")
    }
    
    /// 判断是否为字母+数字
    var isLetterWithDigital: Bool {
        let numberRegex = NSPredicate(format:"SELF MATCHES %@","^.*[0-9]+.*$")
        let letterRegex = NSPredicate(format:"SELF MATCHES %@","^.*[A-Za-z]+.*$")
        if numberRegex.evaluate(with: self) && letterRegex.evaluate(with: self) {
            return true
        } else {
            return false
        }
    }
    
    /// 判断输入的字符串是否为数字，不含其它字符
    var isPurnInt: Bool {
        let scan: Scanner = Scanner(string: self)
        var val:Int = 0
        return scan.scanInt(&val) && scan.isAtEnd
    }
    
    /// 判断是否邮箱格式
    var isEmail: Bool {
        return self.contains("@") && self.contains(".")
    }
    
    /// 创建一个Error
    var error: Error {
        return AJError(self)
    }
}
