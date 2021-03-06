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
    
    var shoppingItemsController: ShoppingItemsController?
    
    var shoppingItem: ShoppingItem? {
        didSet {
            updateViews()
        }
    }
    
    override var isSelected: Bool {
        didSet {
            guard let shoppingItemsController = shoppingItemsController, let item = shoppingItem else { return }
            shoppingItemsController.notIsSelected(for: item, isSelected: !item.isSelected)
            shoppingItem?.isSelected = !item.isSelected
            updateViews()
        }
    }
    func updateViews() {
        guard let shoppingItem = shoppingItem else { return }
        
        itemImage.image = UIImage(named: shoppingItem.name)
        nameLabel.text = shoppingItem.name
        isSelectedLabel.text = shoppingItem.isSelected ? "Added" : "Not Added"
    }
}
