//
//  ChangeDetailViewController.swift
//  PhinconAttendance
//
//  Created by Putut Yusri Bahtiar on 10/07/23.
//

import UIKit

class ChangeDetailViewController: UIViewController {
    
    var objectsDetail = ModelData()
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblAddress: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblName.text = objectsDetail.nameLocation
        lblAddress.text = objectsDetail.addressLocation
        
    }

}
