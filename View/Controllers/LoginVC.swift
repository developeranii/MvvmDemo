//
//  Common.swift
//  MvvmDemo
//
//  Created by Anil Choudhary on 02/08/2023.
//  Copyright © 2023 Anil Choudhary. All rights reserved.
//

import UIKit

class LoginVC: UIViewController{

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapOnLoginButton(_ sender: Any) {
        let request = LoginRequest(userEmail: userName.text, userPassword: password.text)
        LoginViewModel().loginUser(loginRequest: request) { [weak self] response in
            if response?.errorMessage == nil && response?.data != nil
            {
                let vcInstance = self?.storyboard?.instantiateViewController(withIdentifier: "DashboardVC") as! DashboardVC
                self?.navigationController?.pushViewController(vcInstance, animated: true)
            }
            else if response?.errorMessage != nil
            { self?.showAlert(title: Constants.ErrorAlertTitle, message: response?.errorMessage ?? "") }
        }
    }
    
    private func showAlert(title: String, message: String) {
        var alert = UIAlertController()
        alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: Constants.OkAlertTitle, style: .default, handler: nil))
        self.present(alert, animated: true)
    }
}
