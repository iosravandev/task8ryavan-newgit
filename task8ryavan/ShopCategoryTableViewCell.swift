//
//  ShopCategoryTableViewCell.swift
//  task8ryavan
//
//  Created by Ravan on 03.09.24.
//

import UIKit

class ShopCategoryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var shopCategoryCollectionView: UICollectionView! {
        didSet {
            let flowLayout = UICollectionViewFlowLayout()
            shopCategoryCollectionView.collectionViewLayout = flowLayout
            flowLayout.scrollDirection = .vertical
            flowLayout.minimumLineSpacing = 10
            flowLayout.itemSize = CGSize(width: 80 , height: 112 )
            
            shopCategoryCollectionView.delegate = self
            shopCategoryCollectionView.dataSource = self
            //let nib = UINib(nibName: "CategoryCollectionViewCell", bundle: nil)
            //сollectionView.register(nib, forCellWithReuseIdentifier: "CategoryCollectionViewCell")
            shopCategoryCollectionView.register(UINib(nibName: "ShopCategoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ShopCategoryCollectionViewCell")
            shopCategoryCollectionView.backgroundColor = UIColor.clear
            
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

extension ShopCategoryTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = shopCategoryCollectionView.dequeueReusableCell(withReuseIdentifier: "ShopCategoryCollectionViewCell", for: indexPath) as! ShopCategoryCollectionViewCell
        
        switch indexPath.item {
        case 0:
            cell.shopCategoryImage.image = UIImage(named: "Smartphone")
            cell.shopCategoryLabel.text = "Smartphone"
        case 1:
            cell.shopCategoryImage.image = UIImage(named: "Smartphone")
            cell.shopCategoryLabel.text = "Smartphone"
        case 2:
            cell.shopCategoryImage.image = UIImage(named: "Smartphone")
            cell.shopCategoryLabel.text = "Smartphone"
        case 3:
            cell.shopCategoryImage.image = UIImage(named: "Smartphone")
            cell.shopCategoryLabel.text = "Smartphone"
        case 4:
            cell.shopCategoryImage.image = UIImage(named: "Smartphone")
            cell.shopCategoryLabel.text = "Smartphone"
        case 5:
            cell.shopCategoryImage.image = UIImage(named: "Smartphone")
            cell.shopCategoryLabel.text = "Smartphone"
        case 6:
            cell.shopCategoryImage.image = UIImage(named: "Smartphone")
            cell.shopCategoryLabel.text = "Smartphone"
        case 7:
            cell.shopCategoryImage.image = UIImage(named: "Smartphone")
            cell.shopCategoryLabel.text = "Smartphone"
        case 8:
            cell.shopCategoryImage.image = UIImage(named: "Smartphone")
            cell.shopCategoryLabel.text = "Smartphone"
        default: break }
        return cell

    }
    
    
}
