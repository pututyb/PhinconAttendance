//
//  ViewController.swift
//  PhinconAttendance
//
//  Created by Putut Yusri Bahtiar on 07/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewBottom: UIView!
    
    @IBOutlet weak var btnLogin: UIButton!
    
    @IBOutlet weak var btnSignUp: UIButton!
    
    @IBAction func btnLoginPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "LoginView", bundle: nil)
        guard let newMove = storyboard.instantiateViewController(withIdentifier: "LoginView") as? LoginViewController else { return }
        navigationController?.pushViewController(newMove, animated: true)
        
        
    }
    
    @IBAction func btnRegisterPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "RegisterView", bundle: nil)
        guard let newMove = storyboard.instantiateViewController(withIdentifier: "RegisterView") as? RegisterViewController else { return }
        navigationController?.pushViewController(newMove, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let cornerRadius: CGFloat = 24.0
        viewBottom.layer.cornerRadius = cornerRadius
        viewBottom.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        let cornerButton: CGFloat = 10.0
        btnLogin.layer.cornerRadius = cornerButton
        btnLogin.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        btnSignUp.layer.cornerRadius = cornerButton
        btnSignUp.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        
    }
}

