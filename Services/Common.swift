//
//  Common.swift
//  MvvmDemo
//
//  Created by Anil Choudhary on 02/08/2023.
//  Copyright © 2023 Anil Choudhary. All rights reserved.
//

import Foundation

enum Constants {
    static let ErrorAlertTitle = "Error"
    static let SuccessAlertTitle = "Success"
    static let OkAlertTitle = "Ok"
    static let CancelAlertTitle = "Cancel"
    static let SussessMessage = "Navigate to dashboard screen"
}

struct ApiEndpoints
{
    static let login = "https://api-dev-scus-demo.azurewebsites.net/api/User/Login"
    static let employees = "http://demo0333988.mockable.io/Employees"
}
