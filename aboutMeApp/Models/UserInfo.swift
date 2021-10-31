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
   let dateOfBirth = "06.10.1993"
   let cityOfResidence = "Kaliningrad"

    var fullName: String{
        name + " " + lastName
    }
}

