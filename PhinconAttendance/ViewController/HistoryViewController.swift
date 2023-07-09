//
//  HistoryViewController.swift
//  PhinconAttendance
//
//  Created by Putut Yusri Bahtiar on 08/07/23.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var objects = ModelDummyData().data
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = self.tableViewHistory.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? HistoryTableViewCell else { return UITableViewCell()}
        cell.lblName.text = objects[indexPath.row].nameLocation
        cell.lblAddress.text = objects[indexPath.row].addressLocation
        
        return cell
    }

    @IBOutlet weak var tableViewHistory: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableViewHistory.dataSource = self
        tableViewHistory.delegate = self
        
        tableViewHistory.register(UINib(nibName: "HistoryTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        
    }
}
