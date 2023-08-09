//
//  Common.swift
//  MvvmDemo
//
//  Created by Anil Choudhary on 02/08/2023.
//  Copyright © 2023 Anil Choudhary. All rights reserved.
//

import Foundation

struct LoginResource
{
    func loginUser(loginRequest: LoginRequest, completion : @escaping (LoginResponse?) -> Void)
    { 
        let loginUrl = URL(string: ApiEndpoints.login)!
        do {

            let loginPostBody = try JSONEncoder().encode(loginRequest)
            HttpUtility().postApiData(requestUrl: loginUrl, requestBody: loginPostBody, resultType: LoginResponse.self) { loginApiResponse in
                completion(loginApiResponse)
            }
        }
        catch let error {
            debugPrint(error)
        }
    }
}
