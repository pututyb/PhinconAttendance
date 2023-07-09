//
//  ForgotPasswordViewController.swift
//  PhinconAttendance
//
//  Created by Putut Yusri Bahtiar on 08/07/23.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var viewBottom: UIView!
    
    @IBOutlet weak var btnResetPassword: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let cornerRadius: CGFloat = 24.0
        viewBottom.layer.cornerRadius = cornerRadius
        viewBottom.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        let cornerRadiusBtn: CGFloat = 10.0
        btnResetPassword.layer.cornerRadius = cornerRadiusBtn
        btnResetPassword.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMinYCorner, .layerMaxXMaxYCorner]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
