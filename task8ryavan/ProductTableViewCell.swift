//
//  ProductTableViewCell.swift
//  task8ryavan
//
//  Created by Ravan on 03.09.24.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productCollectionView: UICollectionView!{
        didSet {
            let flowLayout = UICollectionViewFlowLayout()
            productCollectionView.collectionViewLayout = flowLayout
            flowLayout.scrollDirection = .horizontal
            flowLayout.minimumLineSpacing = 10
            flowLayout.itemSize = CGSize(width: 168 , height: 246 )
            productCollectionView.delegate = self
            productCollectionView.dataSource = self
            //let nib = UINib(nibName: "CategoryCollectionViewCell", bundle: nil)
            //сollectionView.register(nib, forCellWithReuseIdentifier: "CategoryCollectionViewCell")
            productCollectionView.register(UINib(nibName: "ProductCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ProductCollectionViewCell")
            productCollectionView.backgroundColor = UIColor.clear
        }

    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension ProductTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = productCollectionView.dequeueReusableCell(withReuseIdentifier: "ProductCollectionViewCell", for: indexPath) as! ProductCollectionViewCell
        return cell
    }
    
    
}
