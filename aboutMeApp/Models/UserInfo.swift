//
//  UserInfo.swift
//  loginApp
//
//  Created by Raul Shafigin on 29.10.2021.
//

import Foundation

struct UserInfo {
   let userName = "User"
   let password = "123"
   let name = "Raul"
   let lastName = "Shafigin"

    var fullName: String{
        name + " " + lastName
    }
}

