//
//  MainVC.swift
//  TacoPop
//
//  Created by Rodrigo on 25/08/17.
//  Copyright © 2017 Rodrigo. All rights reserved.
//

import UIKit

class MainVC: UIViewController, DataServiceDelegate {
    
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var colletionView: UICollectionView!
    
    var ds: DataService = DataService.instance

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ds.delegate = self
        ds.loadDeliciousTacoData()
        ds.tacoArray.shuffle()
        
        colletionView.delegate = self
        colletionView.dataSource = self
        
        headerView.addDropShadow()
        
//        let nib = UINib(nibName: "TacoCell", bundle: nil)
//        colletionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
        colletionView.register(TacoCell.self)
    }
    
    func deliciousTacoDataLoaded() {
        print("Delicious Taco Data Loaded!")
        colletionView.reloadData()
    }

}

extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ds.tacoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
//            cell.configureCell(taco: ds.tacoArray[indexPath.row])
//            return cell
//        }
//        return UICollectionViewCell()
        let cell = colletionView.dequeReusableCell(forIndexPath: indexPath) as TacoCell
        cell.configureCell(taco: ds.tacoArray[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell {
            cell.shake()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 95)
    }
}
