//
//  RegisterViewController.swift
//  PhinconAttendance
//
//  Created by Putut Yusri Bahtiar on 07/07/23.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var btnRegister: UIButton! {
        didSet {
            btnRegister.backgroundColor = ColorUtils.greyBtnColor()
            btnRegister.isEnabled = false
        }
    }
    @IBOutlet weak var viewBottom: UIView!
    
    @IBOutlet weak var txtUsername: UITextField! {
        didSet {
            txtUsername.addTarget(self, action: #selector(checkValidUsernamePassword), for: .editingChanged)
        }
    }
    @IBOutlet weak var txtFullName: UITextField! {
        didSet {
            txtFullName.addTarget(self, action: #selector(checkValidUsernamePassword), for: .editingChanged)
        }
    }
    @IBOutlet weak var txtPassword: UITextField! {
        didSet {
            txtPassword.isSecureTextEntry = true
            txtPassword.addTarget(self, action: #selector(checkValidUsernamePassword), for: .editingChanged)
        }
    }
    @IBOutlet weak var txtRepeatPassword: UITextField! {
        didSet {
            txtRepeatPassword.isSecureTextEntry = true
            txtRepeatPassword.addTarget(self, action: #selector(checkValidUsernamePassword), for: .editingChanged)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let cornerRadius: CGFloat = 24.0
        viewBottom.layer.cornerRadius = cornerRadius
        viewBottom.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        let cornerRadiusBtn: CGFloat = 10.0
        btnRegister.layer.cornerRadius = cornerRadiusBtn
        btnRegister.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
    
    @objc func checkValidUsernamePassword() {
        guard let username = txtUsername.text, isValidEmail(username),
              let passw = txtPassword.text, isValidPassword(passw),
              let fullName = txtFullName.text, isValidFullName(fullName),
              let repeatPassw = txtRepeatPassword.text, passw == repeatPassw else {
            btnRegister.backgroundColor = ColorUtils.greyBtnColor()
            btnRegister.isEnabled = false
            return
        }
        
        btnRegister.backgroundColor = ColorUtils.yellowBtnColor()
        btnRegister.isEnabled = true
    }
    
    func isValidEmail(_ username: String) -> Bool {
        let usernameRegex = "^[A-Za-z][A-Za-z0-9_]{7,29}$"
        
        let emailPred = NSPredicate(format: "SELF MATCHES %@", usernameRegex)
        return emailPred.evaluate(with: username)
    }
    
    func isValidPassword(_ passw: String) -> Bool {
        let passwordRegex = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$"
        
        let passwPred = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        return passwPred.evaluate(with: passw)
    }
    
    func isValidFullName(_ fullName: String) -> Bool {
        let fullNameRegex = "^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$"
        
        let fullNamePred = NSPredicate(format: "SELF MATCHES %@", fullNameRegex)
        return fullNamePred.evaluate(with: fullName)
    }
    

}
