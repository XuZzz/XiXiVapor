//
//  BasicModel.swift
//  App
//
//  Created by Xu on 2019/6/28.
//

import Foundation
import Vapor

struct BasicModel: Content {
    var status: StatusModel
    var result: [String: String]
}

struct StatusModel: Content {
    var code: Int
    var message: String
}
//struct ResultModel<T>: Content {
//    var result: T
//}

