//
//  ItemCell.swift
//  DreamLister
//
//  Created by Rex Kung on 11/29/17.
//  Copyright © 2017 Rex Kung. All rights reserved.
//

import UIKit

class LandfallCell: UITableViewCell {

    
    @IBOutlet weak var HurricaneName: UILabel!
    @IBOutlet weak var Time: UILabel!
    @IBOutlet weak var maxSpeed: UILabel!
        
    func configureCell(item: Item) {
        
        title.text = item.title
        details.text = item.details
        
    }
}
