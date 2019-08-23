//
//  ShoppingItemCollectionViewCell.swift
//  Shopping List
//
//  Created by Jordan Christensen on 8/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ShoppingItemCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var isSelectedLabel: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var shoppingItem: ShoppingItem? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let shoppingItem = shoppingItem else { return }
        
        itemImage.image = UIImage(named: shoppingItem.name)
        nameLabel.text = shoppingItem.name
        
        if (shoppingItem.isSelected) {
            isSelectedLabel.text = "Not Added"
        } else {
            isSelectedLabel.text = "Added"
        }
    }
    
}
