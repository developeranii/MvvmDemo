//
//  LoginValidation.swift
//  MvvmDemo
//
//  Created by Anil Choudhary on 02/08/2023.
//  Copyright © 2023 Anil Choudhary. All rights reserved.
//

import Foundation

struct LoginValidation {
    func validate(loginRequest: LoginRequest) -> ValidationResult
    {
        if(loginRequest.userEmail!.isEmpty)
        { return ValidationResult(success: false, error: "User email is empty") }

        if(loginRequest.userPassword!.isEmpty)
        { return ValidationResult(success: false, error: "User password is empty") }

        return ValidationResult(success: true, error: nil)
    }
}

struct ValidationResult {
    let success: Bool
    let error : String?
}
