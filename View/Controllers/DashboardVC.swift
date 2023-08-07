//
//  Common.swift
//  MvvmDemo
//
//  Created by Anil Choudhary on 02/08/2023.
//  Copyright © 2023 Anil Choudhary. All rights reserved.
//

import UIKit

class DashboardVC: UIViewController {

    @IBOutlet weak var employeeTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension DashboardVC : UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "employeeCell", for: indexPath)
        return cell
    }
}
