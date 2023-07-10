//
//  ColorUtils.swift
//  PhinconAttendance
//
//  Created by Putut Yusri Bahtiar on 09/07/23.
//

import UIKit

class ColorUtils {
    
    static let shared = ColorUtils()
    
    static func greyBtnColor() -> UIColor {
        let red: CGFloat = 0.6
        let green: CGFloat = 0.6
        let blue: CGFloat = 0.6
        let alpha: CGFloat = 1.0
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    static func yellowBtnColor() -> UIColor {
        let red: CGFloat = 1
        let green: CGFloat = 0.765
        let blue: CGFloat = 0.012
        let alpha: CGFloat = 1.0
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
}


