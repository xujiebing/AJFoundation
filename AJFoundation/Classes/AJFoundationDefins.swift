//
//  AJAppInfo.swift
//  Action
//
//  Created by 徐结兵 on 2020/4/14.
//

import Foundation

public typealias AJHandler = ()->()
public typealias AJFloatHandler = (Float)->()
public typealias AJDoubleHandler = (Double)->()
public typealias AJIntHandler = (Int)->()
public typealias AJStringHandler = (String)->()
public typealias AJBoolHandler = (Bool)->()
public typealias AJErrorHandler = (Error?)->()
public typealias AJArrayHandler = ([Any])->()
public typealias AJAnyHandler = (Any)->()
