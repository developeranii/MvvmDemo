//
//  LoginViewModel.swift
//  MvvmDemo
//
//  Created by Anil Choudhary on 02/08/202320.
//  Copyright © 2023 Anil Choudhary. All rights reserved.
//

import Foundation

struct LoginViewModel
{
    func loginUser(loginRequest: LoginRequest, completion: @escaping(LoginResponse?) -> Void)
    {
        let validationResult = LoginValidation().validate(loginRequest: loginRequest)

        if validationResult.success
        {
            LoginResource().loginUser(loginRequest: loginRequest) { loginApiResponse in
                DispatchQueue.main.async { completion(loginApiResponse) }
            }
        }
    }
}
