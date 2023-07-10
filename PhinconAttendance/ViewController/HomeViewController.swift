//
//  HomeViewController.swift
//  PhinconAttendance
//
//  Created by Putut Yusri Bahtiar on 08/07/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var isOrange = true
    
    @IBOutlet weak var viewMid: UIView!

    @IBOutlet weak var btnCircle: UIButton!
    
    @IBAction func btnCirclePressed(_ sender: Any) {
        
        isOrange = !isOrange

        if isOrange {
            btnCircle.backgroundColor = .green
            btnCircle.setTitle("CHECK IN", for: .normal)
            print("Green")
        } else {
            btnCircle.backgroundColor = .orange
            btnCircle.setTitle("CHECK OUT", for: .normal)
            print("Orange")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let cornerRadiusViewMid: CGFloat = 10.0
        viewMid.layer.cornerRadius = cornerRadiusViewMid
        viewMid.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMaxYCorner, .layerMinXMaxYCorner, .layerMaxXMinYCorner]
        
        btnCircle.layer.cornerRadius = btnCircle.frame.size.width / 2
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
