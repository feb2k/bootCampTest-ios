//
//  ViewController.swift
//  bootCampTest
//
//  Created by Febriadi Pratama on 3/9/17.
//  Copyright © 2017 Febriadi Pratama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var movieCollection: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - Configure
    func setupCollectionView(){
        
        
        
        movieCollection.delegate = self
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: 0, right: 8)
        
        flowLayout.minimumLineSpacing = 4
        flowLayout.minimumInteritemSpacing = 4
        
        let width: CGFloat = (UIScreen.main.bounds.width - 24) / 2
        let height: CGFloat = 500
        
        flowLayout.itemSize = CGSize(width: width, height: height)
        
        movieCollection.setCollectionViewLayout(flowLayout, animated: false)
    }

}

// MARK: -UICollectionViewDataSource

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
            as! moviesViewCell
        
        return cell
    }
}


