//
//  UserModel.swift
//  App
//
//  Created by Xu on 2019/6/28.
//

import Foundation
import Vapor

struct UserModel: Content {
    var status: StatusModel
    var result: UserInfoModel
}
struct UserInfoModel: Content {
    var name: String
    var age: String
}
