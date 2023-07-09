//
//  HistoryTableViewCell.swift
//  PhinconAttendance
//
//  Created by Putut Yusri Bahtiar on 09/07/23.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {

    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
