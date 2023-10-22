//
//  FoodCell.swift
//  FlavorHub
//
//  Created by Samet  Doğan on 19.10.2023.
//

import UIKit

class FoodCell: UICollectionViewCell {
    protocol HucreProtocol {
        func sepeteEkleTikla(indexPath:IndexPath)
    
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageViewCell: UIImageView!
    
    var hucreProtocol:HucreProtocol?
    var indexPath:IndexPath?
}
