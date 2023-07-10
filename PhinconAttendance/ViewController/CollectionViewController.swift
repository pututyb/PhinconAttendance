//
//  CollectionViewController.swift
//  PhinconAttendance
//
//  Created by Putut Yusri Bahtiar on 10/07/23.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    var objects = ModelDummyData().data
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return objects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = self.collectionChange.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? ChangeCollectionViewCell else { return UICollectionViewCell()}
        cell.lblName.text = objects[indexPath.row].nameLocation
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedObject = objects[indexPath.item]
        
        if collectionView.cellForItem(at: indexPath) is ChangeCollectionViewCell {
            print(objects[indexPath.item])
            
            guard let newMove = storyboard?.instantiateViewController(withIdentifier: "ChangeDetailView") as? ChangeDetailViewController else { return }
            newMove.objectsDetail = selectedObject
            navigationController?.pushViewController(newMove, animated: true)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 80)
    }
    
    
    
    @IBOutlet weak var collectionChange: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        collectionChange.dataSource = self
        collectionChange.delegate = self
        let uinib = UINib(nibName: "ChangeCollectionViewCell", bundle: nil)
        
        collectionChange.register(uinib, forCellWithReuseIdentifier: "Cell")
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumInteritemSpacing = 10.0
        
        let horizontalPadding: CGFloat = 20.0
        flowLayout.sectionInset = UIEdgeInsets(top: 0, left: horizontalPadding, bottom: 0, right: horizontalPadding)
        
        collectionChange.collectionViewLayout = flowLayout
    }
    
    
}
