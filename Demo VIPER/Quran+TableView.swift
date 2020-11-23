//
//  Quran+TableView.swift
//  Demo VIPER
//
//  Created by mohamed sayed on 11/23/20.
//

import UIKit

extension QuranVC :UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: QuranCell.reuseID) as! QuranCell
        
        cell.quranNameLable.text = "UITableViewCell"
        return cell
    }
    
    
}

