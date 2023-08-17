//
//  LoginRequest.swift
//  MvvmDemo
//
//  Created by Anil Choudhary on 02/08/2023.
//  Copyright © 2023 Anil Choudhary. All rights reserved.
//

import Foundation

struct LoginRequest: Codable
{
    var userEmail: String?
    var userPassword: String?
}
