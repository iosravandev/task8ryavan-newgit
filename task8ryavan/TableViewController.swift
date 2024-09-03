//
//  TableViewController.swift
//  task8ryavan
//
//  Created by Ravan on 31.08.24.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var tableViewHome: UITableView! {
        didSet{
            tableViewHome.delegate = self
            tableViewHome.dataSource = self
            let nib1 = UINib(nibName: "CategoryTableViewCell", bundle: nil)
            tableViewHome.register(nib1, forCellReuseIdentifier: "CategoryTableViewCell")
            let nib2 = UINib(nibName: "ShopCategoryTableViewCell", bundle: nil)
            tableViewHome.register(nib2, forCellReuseIdentifier: "ShopCategoryTableViewCell")
            let nib3 = UINib(nibName: "ProductTableViewCell", bundle: nil)
            tableViewHome.register(nib3, forCellReuseIdentifier: "ProductTableViewCell")
            tableViewHome.backgroundColor = UIColor.clear
            tableViewHome.footerView(forSection: 50)
            tableViewHome.headerView(forSection: 50)
            
        }
    }
}


extension TableViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let identifier: String
        switch indexPath.row {
        case 0:
            identifier = "CategoryTableViewCell"
        case 1:
            identifier = "ShopCategoryTableViewCell"
        case 2:
            identifier = "ProductTableViewCell"
        default:
            identifier = "DefaultCellIdentifier" // используйте идентификатор по умолчанию для других случаев
        }
        
        let cell = tableViewHome.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        return cell
        
    }
    
    
    
}
