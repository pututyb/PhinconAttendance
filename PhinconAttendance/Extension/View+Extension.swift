//
//  View+Extension.swift
//  PhinconAttendance
//
//  Created by Putut Yusri Bahtiar on 10/07/23.
//

import UIKit

extension UIView{
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return self.cornerRadius
        }
        
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
