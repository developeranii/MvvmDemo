//
//  AlertUtility.swift
//  MvvmDemo
//
//  Created by Anil Choudhary on 16/08/23.
//

import UIKit

struct CustomAlert
{
    func showAlert(title: String, message: String, vcInstance: UIViewController?)
    {
        var alert = UIAlertController()
        alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: Constants.OkAlertTitle, style: .default, handler: nil))
        vcInstance?.present(alert, animated: true)
    }
}
